### MARIADB ###
FROM debian:bullseye
RUN apt update && apt install -y curl
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
RUN apt install -y mariadb-server
RUN apt install -y vim mariadb-client

COPY ./tools/ /run/tools/
RUN chmod 775 /run/tools/init.sh

RUN mkdir /run/mysqld/
COPY ./tools/mariadb.cnf /etc/mysql/mariadb.cnf 
RUN chmod -R 777 /etc/mysql/
RUN chown -R root:mysql /etc/mysql/

RUN chmod -R 775 /run/mysqld/
RUN chown -R mysql:mysql /run/mysqld/
RUN chmod -R 775 /var/lib/mysql/
RUN chown -R mysql:mysql /var/lib/mysql/

USER mysql
CMD ["/run/tools/init.sh"]
