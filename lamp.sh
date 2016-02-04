#!/bin/bash

#root section
su -

#Upgrade section
yum -y update
yum -y upgrade

#install packages section

#install Apache
yum -y install htttpd
#Install mariadb
yum -y install mariadb mariadb-server
#Install php
yum -y install php
#install  tomcat
yum -y install tomcat tomcat-webapps tomcat-admin
#install SSL
yum -y install mod_ssl openssl
#install wget
yum -y install wget

#make file phpinfo.php
echo "<?php" > /var/www/html/phpinfo.php
echo "phpinfo();" >> /var/www/html/phpinfo.php
echo "?>" >> /var/www/html/phpinfo.php
