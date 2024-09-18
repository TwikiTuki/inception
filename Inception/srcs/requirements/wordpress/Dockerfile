FROM debian
#RUN apt update && apt install -y vim curl systemctl
RUN apt update && apt install -y curl
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
RUN apt install -y mariadb-server
RUN apt install -y vim mariadb-client #TODO delete
#CMD ["/etc/init.d/mariadb", "start"]
#CMD ["mysqld", "start"]
#php
RUN apt install -y php-fpm/stable

COPY init.sh /bin/init.sh
RUN mkdir -p  /var/www/html
COPY page.php /var/www/html/page.php
RUN chmod -R 777 /var/www
COPY files/www.conf /etc/php/8.2/fpm/pool.d/www.conf
RUN chmod 777 /bin/init.sh
RUN echo $PATH
CMD ["/bin/init.sh"]
