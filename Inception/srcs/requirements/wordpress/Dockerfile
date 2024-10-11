### WORDPRESS ###
FROM debian:bullseye
RUN apt update && apt install -y php-fpm php-mysql
RUN mkdir -p  /var/www/html
COPY tools/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN groupadd --gid 1000 hosttwikituki
RUN adduser www-data hosttwikituki

RUN mkdir -p /run/php

WORKDIR /usr/sbin/
RUN apt update && apt install -y curl
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN cp wp-cli.phar wp
RUN chmod +x wp

RUN mkdir /world/
WORKDIR /var/www/html
COPY ./tools/ /run/tools
CMD ["/run/tools/init.sh"]
