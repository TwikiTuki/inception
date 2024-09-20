### NGinx ###
FROM debian
RUN apt -y update && apt -y install curl vim
RUN apt -y update && apt -y install nginx 
COPY ./page /var/www/page
EXPOSE 443
EXPOSE 80
COPY nginx.conf /etc/nginx/sites-available/default 
COPY page.php /var/www/html/page.php
COPY files/default /etc/nginx/sites-available/default 

RUN chmod -R 777 /var/www/html

#ENTRYPOINT /usr/sbin/nginx start
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

#TODELETE
WORKDIR /var/www/
RUN rm -rf html
COPY page.php /var/www/html/page.php
RUN apt install wget unzip
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv wordpress html
RUN chmod -R 777 /var/www/html
RUN touch /var/www/html/wp-config.php

RUN echo "hewllow from nginx" > /var/www/html/index.html
RUN echo "hewllow wordpress from nginx" > /var/www/html/index.html
