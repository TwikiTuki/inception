### NGinx ###
FROM debian:bullseye
RUN apt -y update && apt -y install curl vim
RUN apt -y update && apt -y install nginx 
EXPOSE 443
EXPOSE 80
COPY tools/default /etc/nginx/sites-available/default 
RUN groupadd --gid 1000 hosttwikituki
RUN adduser www-data hosttwikituki
RUN mkdir -p /etc/ssl/private #
RUN apt update && apt install openssl
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/jrenau-v.42.fr.key -out /etc/ssl/jrenau-v.42.fr.crt -days 365 -nodes -subj "/C=SP/ST=Cat/L=Cat/O=twk/OU=v/CN=jrenau-v.42.fr"; #

WORKDIR /var/www/html
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
