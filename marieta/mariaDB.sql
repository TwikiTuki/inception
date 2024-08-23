show databases;
show tables;
create database mydb;
use mydb;
select database(); // returns mydb
CREATE USER twiki IDENTIFIED VIA unix_socket;

https://mariadb.com/kb/en/pluggable-authentication-overview/#server-authentication-plugins-installed-by-default
https://mariadb.com/kb/en/authentication-plugin-unix-socket/
https://www.youtube.com/watch?v=1P54UoBjbDs
