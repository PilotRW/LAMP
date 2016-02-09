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

#restart apache
systemctl restart httpd  

#Firewall
IPT=/usr/sbin/iptables
$IPT -F INPUT
$IPT -A INPUT -i eth0 -p tcp -s 0/0 --sport 0:65535 -d 0/0 --dport 443 -j ACCEPT
$IPT -A INPUT -i eth0 -p tcp -s 0/0 --sport 0:65535 -d 0/0 --dport 1:1024 -j DROP


