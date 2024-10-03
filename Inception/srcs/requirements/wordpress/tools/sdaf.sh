#https://make.wordpress.org/cli/handbook/how-to/how-to-install/
echo wololooooooooooooooooo
wp core download --path=wpclidemo.dev
wp config create --dbname=wordpres --dbuser=uwordpres  --prompt=securePass
wp db create
#wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org
wp core install --admin_user=wpadmin --admin_password=wpadminpass

#service php7.4-fpm start
/usr/sbin/php-fpm7.4
tail -f
