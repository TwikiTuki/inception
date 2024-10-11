#!/bin/bash
openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/${HOST_NAME}.key -out /etc/ssl/${HOST_NAME}.crt -days 365 -nodes -subj "/C=SP/ST=Cat/L=Cat/O=twk/OU=v/CN=jrenau-v.42.fr"; #
sed -i "s/{HOST_NAME}/${HOST_NAME}/g" /etc/nginx/sites-available/default
/usr/sbin/nginx -g "daemon off;"
