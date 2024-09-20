### MARIADB ###
FROM debian:bullseye
#RUN apt update && apt install -y vim curl systemctl
RUN apt update && apt install -y curl
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
RUN apt install -y mariadb-server
RUN apt install -y vim mariadb-client #TODO delete
#CMD ["/etc/init.d/mariadb", "start"]

RUN <<EOF
/etc/init.d/mariadb start
mariadb --execute "create database wordpress;"
mariadb --execute "grant all privileges on wordpress.* to uwordpress@localhost identified by 'securePass';"
mariadb --execute "grant all privileges on wordpress.* to mariadb@localhost;"   # TODO delete
mariadb --execute "grant all privileges on wordpress.* to mysql@localhost;"   # TODO delete???
mariadb --execute "flush privileges"
EOF

#RUN groupadd -r mariadb && useradd -r mariadb -g mariadb
#RUN chown mariadb:mariadb /var/lib/mysql /var/run/mysqld /etc/mysql
RUN useradd -r mariadb -g mysql   # TODO delete
#RUN chown mariadb:mysql /var/lib/mysql /var/run/mysqld /etc/mysql
#USER mariadb
USER mysql
CMD ["mariadbd"]

#CMD ["/bin/bash"]
#CMD ["mariadb", "use=root", "start"]
#CMD ["mysqld", "use=root", "start"]
