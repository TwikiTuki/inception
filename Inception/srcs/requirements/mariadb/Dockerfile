### MARIADB ###
FROM debian:bullseye
RUN apt update && apt install -y curl
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
RUN apt install -y mariadb-server
RUN apt install -y vim mariadb-client

RUN <<EOF
/etc/init.d/mariadb start
mariadb --execute "create database wordpress;"
mariadb --execute "grant all privileges on wordpress.* to uwordpress identified by 'securePass';"
mariadb --execute "flush privileges"
EOF

USER mysql
#CMD ["mariadbd", "user=root"]
CMD ["mariadbd"]
COPY ./files/mariadb.cnf /etc/mysql/mariadb.cnf 

#CMD ["/bin/bash"]
#CMD ["mariadb", "use=root", "start"]
#CMD ["mysqld", "use=root", "start"]
#CMD ["/etc/init.d/mariadb", "start"]
