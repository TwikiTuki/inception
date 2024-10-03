### WORDPRESS ###
FROM debian:bullseye
### PHP ###
RUN apt update && apt install -y php-fpm php-mysql
RUN mkdir -p  /var/www/html
#COPY files/www.conf /etc/php/8.2/fpm/pool.d/www.conf
COPY files/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN groupadd --gid 995 hostvboxsf
RUN adduser www-data hostvboxsf
RUN groupadd --gid 1000 hosttwikituki
RUN adduser www-data hosttwikituki

RUN mkdir -p /run/php

WORKDIR /usr/sbin/
RUN apt update && apt install -y curl
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN cp wp-cli.phar wp
RUN chmod +x wp

WORKDIR /var/www/html
COPY ./tools/ /run/tools
#CMD ["tail", "-f"]
CMD ["/run/tools/init.sh"]

### WORDPRESS ###

#RUN apt update && apt -y install unzip wget
##RUN mkdir -p /usr/share/nginx
#WORKDIR /var/www/html
#RUN wget https://wordpress.org/latest.zip
#RUN unzip latest.zip 
#COPY wp-config.php /var/www/html/wordpress
#run chmod -R 777 /var/www
##RUN mv /usr/share/nginx/wordpress /usr/share/nginx/example.com
#
#
#CMD ["/usr/sbin/php-fpm7.4", "--nodaemonize"]
##CMD ["/usr/sbin/php-fpm7.4"]
##CMD ["service php7.4-fpm", "start"]
##CMD ["/bin/init.sh"]
