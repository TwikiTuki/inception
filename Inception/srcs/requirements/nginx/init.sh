#!/bin/bash
/etc/init.d/mariadb  start
service php8.2-fpm start
/usr/sbin/nginx -g 'daemon off;'
while true; do sleep 10000; done

