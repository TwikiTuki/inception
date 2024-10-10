### MARIADB ###
FROM debian:bullseye
RUN apt update && apt install -y curl
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
RUN apt install -y mariadb-server
RUN apt install -y vim mariadb-client

COPY ./tools/ /run/tools/
RUN chmod 777 /run/tools/init.sh

RUN mkdir /run/mysqld/
RUN chmod -R 777 /etc/mysql/
RUN chmod -R 777 /etc/mysql/mariadb.cnf

RUN chmod -R 777 /run/mysqld/
RUN chmod -R 777 /var/lib/mysql/
RUN cp -r /var/lib/mysql /sdaf
USER mysql
#RUN <<EOF
#/etc/init.d/mariadb start
#mariadb --execute "create database wordpress;"
#mariadb --execute "grant all privileges on wordpress.* to uwordpress identified by 'securePass';"
#mariadb --execute "flush privileges"
#EOF
#RUN echo fkkk

#CMD ["mariadbd", "user=root"]
#CMD ["mariadbd"]
CMD ["/run/tools/init.sh"]
COPY ./files/mariadb.cnf /etc/mysql/mariadb.cnf 

#CMD ["/bin/bash"]
#CMD ["mariadb", "use=root", "start"]
#CMD ["mysqld", "use=root", "start"]
#CMD ["/etc/init.d/mariadb", "start"]
