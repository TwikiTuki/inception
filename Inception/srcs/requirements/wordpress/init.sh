#!/bin/bash
/etc/init.d/mariadb  start
service php7.4-fpm start
while true; do sleep 10000; done

