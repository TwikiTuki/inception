#! /bin/bash
#https://make.wordpress.org/cli/handbook/how-to/how-to-install/
echo :::::::::::::::::::: wololooooooooooooooooo
wp core download --allow-root --path=wordpress
cd wordpress
echo sdaf
wp config create --allow-root --dbname=wordpress --dbuser=uwordpress --dbhost=mariadb --dbpass=securePass --prompt=securePass
echo fasd
wp db create --allow-root
wp core install --allow-root --url=twikiland --title="twiki" --admin_user=wpadmin --admin_password=wpadminpass --admin_email=real@realer.realest
#wp core install --allow-root --admin_user=wpadmin --admin_password=wpadminpass

chown -R root:hosttwikituki ./
chmod -R 775 ./
#service php7.4-fpm start
/usr/sbin/php-fpm7.4
tail -f
