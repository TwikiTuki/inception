#!/bin/bash
if [ ! -d /var/lib/mysql/wordpress ] ; then 
	/etc/init.d/mariadb start
	mariadb --execute "create database  ${DATABASE_NAME};"
	mariadb --execute "grant all privileges on ${DATABASE_NAME}.* to ${DATABASE_USER} identified by 'securePass';"
	mariadb --execute "flush privileges"
	/etc/init.d/mariadb stop
	sleep 5
fi
mariadbd
