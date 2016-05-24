#!/bin/bash

#install packages section

yum -y update
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

#tomcat & jenkins

#copying correct  tomcat config file 
cp -f /home/administrator/LAMP/resources/tomcat-users.xml /usr/share/tomcat/conf/
chown administrator:administrator /usr/share/tomcat/conf/tomcat-users.xml
chmod 755 /usr/share/tomcat/conf/tomcat-users.xml

#start tomcat
systemctl start tomcat
systemctl enable tomcat

# Download Jenkins and put them into tomcat 
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
# Copy .war to Jenkins
cp jenkins.war /usr/share/tomcat/webapps/
chown administrator:administrator /usr/share/tomcat/webapps/jenkins.war

#SSL
openssl genrsa -out ca.key 2048
openssl req -new -key ca.key -out ca.csr -subj /C=UA/ST=Kyiv/L=Kuiv/O=TC/OU=DO/CN=LAMP/emailAddress=pilotrw@gmail.com
openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt
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
chown administrator:administrator /var/www/html/phpinfo.php
chmod 755 /var/www/html/phpinfo.php

#copying apache config file
cp -f /home/administrator/LAMP/resources/httpd.conf /etc/httpd/conf/
chmod 755 /etc/httpd/conf/httpd.conf

#rerouting from http to https
cat > /var/www/html/.htaccess <<- EOM

RewriteEngine On 
RewriteCond %{HTTPS} off 
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}

EOM
chown administrator:administrator /etc/httpd/conf/httpd.conf
chmod 755 /etc/httpd/conf/.htaccess

#start apache&maria
systemctl start httpd
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb

#Firewall
yum -y install iptables-services

cp /home/administrator/LAMP/resources/iptables /etc/sysconfig/

systemctl start iptables
systemctl enable iptables


