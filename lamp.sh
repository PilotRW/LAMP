#!/bin/bash

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
