#!/bin/bash

#install packages section

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

#make file phpinfo.php
sudo bash 'cat > /var/www/html/phpinfo.php <<- EOM

<?php

phpinfo();

?>

EOM'

#copying apache config file
sudo cp httpd.conf /etc/httpd/conf/

#start apache&maria
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl start mariadb
sudo systemctl enable mariadb

#configure&start tomcat

#copying correct  tomcat config file 
sudo cp -f tomcat-users.xml /usr/share/tomcat/conf/

#start tomcat
sudo systemctl start tomcat
sudo systemctl enable tomcat

# Download Jenkins and put them into tomcat 
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
# Copy .war to Jenkins
sudo cp jenkins.war /usr/share/tomcat/webapps/

#reverse proxy /jenkins
sudo cp reverse-proxy.conf /etc/httpd/conf.d/

#SSL
sudo openssl genrsa -out ca.key 2048
sudo openssl req -new -key ca.key -out ca.csr
sudo openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt
sudo cp ca.crt /etc/pki/tls/certs
sudo cp ca.key /etc/pki/tls/private/
sudo cp ca.csr /etc/pki/tls/private/
sudo cp ssl.conf /etc/httpd/conf.d/

#restart apache&disable SELinux
#/usr/sbin/setsebool httpd_can_network_connect 1
#systemctl restart httpd  

#rerouting from http to https
sudo bash 'cat > /var/www/html/.htaccess <<- EOM

RewriteEngine On 
RewriteCond %{HTTPS} off 
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}

EOM'


#Firewall
sudo yum -y install iptables-services

#sudo cp iptables /etc/sysconfig/
#run  iptables configuring script
./iptables.sh

sudo systemctl start iptables
sudo systemctl enable iptables


