FROM debian
RUN apt -y update && apt -y install curl vim
RUN apt -y update && apt -y install nginx 
COPY ./page /var/www/page
EXPOSE 443
EXPOSE 80
#ENTRYPOINT /usr/sbin/nginx start
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

#RUN apt update && apt install -y vim curl systemctl
RUN apt update && apt install -y curl
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
RUN apt install -y mariadb-server
RUN apt install -y vim mariadb-client #TODO delete
#CMD ["/etc/init.d/mariadb", "start"]
#CMD ["mysqld", "start"]

#php
RUN apt install -y php-fpm/stable
COPY nginx.conf /etc/nginx/sites-available/default 
COPY page.php /var/www/html/page.php
RUN chmod -R 777 /var/www/html




COPY init.sh /bin/init.sh
RUN chmod 777 /bin/init.sh
RUN echo $PATH
CMD ["/bin/init.sh"]

