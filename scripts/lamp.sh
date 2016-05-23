#!/bin/bash

#install packages section

sudo yum -y update
#install Apache
sudo yum -y install httpd
#Install mariadb
sudo yum -y install mariadb mariadb-server
#Install php
sudo yum -y install php
#install  tomcat
sudo yum -y install tomcat tomcat-webapps tomcat-admin tomcat-admin-webapps
#install SSL
sudo yum -y install mod_ssl openssl
#install wget
sudo yum -y install wget

#tomcat & jenkins

#copying correct  tomcat config file 
cp -f /home/administrator/LAMP/resources/tomcat-users.xml /usr/share/tomcat/conf/

#start tomcat
sudo systemctl start tomcat
sudo systemctl enable tomcat

# Download Jenkins and put them into tomcat 
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
# Copy .war to Jenkins
cp jenkins.war /usr/share/tomcat/webapps/


#SSL
sudo openssl genrsa -out ca.key 2048
sudo openssl req -new -key ca.key -out ca.csr -subj /C=UA/ST=Kyiv/L=Kuiv/O=TC/OU=DO/CN=LAMP/emailAddress=pilotrw@gmail.com
sudo openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt
cp ca.crt /etc/pki/tls/certs
cp ca.key /etc/pki/tls/private/
cp ca.csr /etc/pki/tls/private/
cp /home/administrator/LAMP/resources/ssl.conf /etc/httpd/conf.d/

#reverse proxy /jenkins
cp -f /home/administrator/LAMP/resources/reverse-proxy.conf /etc/httpd/conf.d/

#make file phpinfo.php
cat > /var/www/html/phpinfo.php <<- EOM

<?php

phpinfo();

?>

EOM

#copying apache config file
cp -f /home/administrator/LAMP/resources/httpd.conf /etc/httpd/conf/

#rerouting from http to https
cat > /var/www/html/.htaccess <<- EOM

RewriteEngine On 
RewriteCond %{HTTPS} off 
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}

EOM

#start apache&maria
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl start mariadb
sudo systemctl enable mariadb

#Firewall
sudo yum -y install iptables-services

cp /home/administrator/LAMP/resources/iptables /etc/sysconfig/

sudo systemctl start iptables
sudo systemctl enable iptables


