#! /bin/bash
#https://make.wordpress.org/cli/handbook/how-to/how-to-install/
wp core download --allow-root --path=wordpress
cd wordpress
wp config create --allow-root --dbname=wordpress --dbuser=uwordpress --dbhost=mariadb --dbpass=securePass --prompt=securePass
wp db create --allow-root
wp core install --allow-root --url=twikiland --title="twiki" --admin_user=wpadmin --admin_password=wpadminpass --admin_email=real@realer.realest

chown -R root:hosttwikituki ./
chmod -R 775 ./
/usr/sbin/php-fpm7.4 --nodaemonize
