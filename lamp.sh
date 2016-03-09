#!/bin/bash

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

#copying apache config file
cp httpd.conf /etc/httpd/conf/

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
#/usr/sbin/setsebool httpd_can_network_connect 1
#systemctl restart httpd  

#rerouting from http to https
cat > /var/www/html/.htaccess <<- EOM

RewriteEngine On 
RewriteCond %{HTTPS} off 
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}

EOM

systemctl restart httpd

#Firewall
yum -y install iptables-services

cp iptables /etc/sysconfig/
systemctl start iptables
systemctl enable iptables


