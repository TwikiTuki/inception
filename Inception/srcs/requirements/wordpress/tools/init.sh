#! /bin/bash
#https://make.wordpress.org/cli/handbook/how-to/how-to-install/
if [ ! -f /var/www/html/wordpress/wp-config.php ] ; then
	sleep 15
	wp core download --allow-root --path=wordpress
	cd wordpress
	wp config create --allow-root --dbname=${DATABASE_NAME} --dbuser=${DATABASE_USER} --dbhost=mariadb --dbpass=securePass --prompt=securePass
	wp core install --allow-root --url=${HOST_NAME} --title=${WP_ADMIN_TITLE} --admin_user=${WP_ADMIN_USR} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_MAIL}
	wp user create ${WP_USER_USR} ${WP_USER_MAIL} --role=author --user_pass=${WP_USER_PASS} --path=/var/www/html/wordpress --allow-root
	chown -R root:hosttwikituki ./
	chmod -R 775 ./
fi

/usr/sbin/php-fpm7.4 --nodaemonize
