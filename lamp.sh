#!/bin/bash

#Upgrade section
yum -y update
yum -y upgrade

#install packages section

#install Apache
yum -y install httpd
#Install mariadb
yum -y install mariadb mariadb-server
#Install php
yum -y install php
#install  tomcat
yum -y install tomcat tomcat-webapps tomcat-admin tomcat-admin-webapps
#install SSL
yum -y install mod_ssl openssl
#install wget
yum -y install wget

#make file phpinfo.php
cat > /var/www/html/phpinfo.php <<- EOM

<?php

phpinfo();

?>

EOM

#echo "<?php" > /var/www/html/phpinfo.php
#echo "phpinfo();" >> /var/www/html/phpinfo.php
#echo "?>" >> /var/www/html/phpinfo.php

#start apache&maria
systemctl start httpd
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb

#configure&start tomcat

#copying correct  tomcat config file 
cp -f tomcat-users.xml /usr/share/tomcat/conf/

#start tomcat
systemctl start tomcat
systemctl enable tomcat

# Download Jenkins and put them into tomcat 
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
# Copy .war to Jenkins
cp jenkins.war /usr/share/tomcat/webapps/

#reverse proxy /jenkins
cp reverse-proxy.conf /etc/httpd/conf.d/

#SSL
openssl genrsa -out ca.key 2048
openssl req -new -key ca.key -out ca.csr
openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt
cp ca.crt /etc/pki/tls/certs
cp ca.key /etc/pki/tls/private/
cp ca.csr /etc/pki/tls/private/
cp ssl.conf /etc/httpd/conf.d/

#restart apache&disable SELinux
/usr/sbin/setsebool httpd_can_network_connect 1
systemctl restart httpd  

#Firewall
yum -y install iptables-services
export IPT="iptables"
export WAN=eth0
#clear all previous rules
$IPT -F
$IPT -F -t nat
$IPT -F -t mangle
$IPT -X
$IPT -t nat -X
$IPT -t mangle -X
#drop all unknown traffic
$IPT -P INPUT DROP
$IPT -P OUTPUT DROP
$IPT -P FORWARD DROP
$IPT -A INPUT -i lo -j ACCEPT
#Accept all traffic from localhost
$IPT -A INPUT -i lo -j ACCEPT
$IPT -A OUTPUT -o lo -j ACCEPT
#Enable WAN for output
$IPT -A OUTPUT -o $WAN -j ACCEPT
#Enable WAN for input
$IPT -A INPUT -i $WAN -j ACCEPT
#Accept all confirmed conection and subconnections
$IPT -A INPUT -p all -m state --state ESTABLISHED,RELATED -j ACCEPT
$IPT -A OUTPUT -p all -m state --state ESTABLISHED,RELATED -j ACCEPT
$IPT -A FORWARD -p all -m state --state ESTABLISHED,RELATED -j ACCEPT
#Disable all dangerous packets
$IPT -A INPUT -m state --state INVALID -j DROP
$IPT -A FORWARD -m state --state INVALID -j DROP
$IPT -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
$IPT -A INPUT -p tcp ! --syn -m state --state NEW -j DROP
$IPT -A OUTPUT -p tcp ! --syn -m state --state NEW -j DROP
#Enable ssh
#$IPT -A INPUT -i $WAN -p tcp --dport 22 -j ACCEPT

$IPT -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
$IPT -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
#$IPT -A INPUT -p tcp -m tcp --dport 1:1024 -j DROP
systemctl start iptables
systemctl enable iptables


