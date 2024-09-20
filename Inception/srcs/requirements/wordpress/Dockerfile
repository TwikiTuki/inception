### WORDPRESS ###
FROM debian:bullseye

### MARIADB ###
##RUN apt update && apt install -y vim curl systemctl
#RUN apt update && apt install -y curl
#RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
#RUN apt install -y mariadb-server
#RUN apt install -y vim mariadb-client #TODO delete
##CMD ["/etc/init.d/mariadb", "start"]
##CMD ["mysqld", "start"]

#RUN <<EOF
#/etc/init.d/mariadb start
#mariadb --execute "create database wordpress;"
#mariadb --execute "grant all privileges on wordpress.* to uwordpress@localhost identified by 'securePass';"
#mariadb --execute "flush privileges"
#EOF

### PHP ###
RUN apt update && apt install -y php-fpm php-mysql
#RUN apt-get update && apt-get install -y php-fpm
COPY init.sh /bin/init.sh
RUN mkdir -p  /var/www/html
COPY page.php /var/www/html/page.php
RUN chmod -R 777 /var/www
#COPY files/www.conf /etc/php/8.2/fpm/pool.d/www.conf
COPY files/www.conf /etc/php/7.4/fpm/pool.d/www.conf
RUN chmod 777 /bin/init.sh
RUN echo $PATH


### WORDPRESS ###

RUN apt update && apt -y install unzip wget
#RUN mkdir -p /usr/share/nginx
WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip 
COPY wp-config.php /var/www/html/wordpress
run chmod -R 777 /var/www
#RUN mv /usr/share/nginx/wordpress /usr/share/nginx/example.com

RUN cp -r /var/www/html /sdafhtml
#CMD ["service php7.4-fpm", "start"]
CMD ["/bin/init.sh"]

