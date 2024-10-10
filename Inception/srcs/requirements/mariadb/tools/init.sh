#!/bin/bash

/etc/init.d/mariadb start
chown mysql:mysql /var/lib/mysql
cp -r /sdaf /var/lib/mysql
mariadb --execute "create database  ${DATABASE_NAME};"
mariadb --execute "grant all privileges on ${DATABASE_NAME}.* to ${DATABASE_USER} identified by 'securePass';"
mariadb --execute "flush privileges"
/etc/init.d/mariadb stop
sleep 5
rm /run/mysqld/mysqld.sock

mariadbd
echo '::::::::::::::::: tailing :( :::::::::::::::::'
tail -f
