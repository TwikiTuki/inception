### NGinx ###
FROM debian:bullseye
RUN apt -y update && apt -y install nginx 
EXPOSE 443
COPY tools/default /etc/nginx/sites-available/default 
RUN groupadd --gid 1000 hosttwikituki
RUN adduser www-data hosttwikituki
RUN mkdir -p /etc/ssl/private #
RUN apt update && apt install openssl

WORKDIR /var/www/html
COPY tools/init.sh /init.sh
RUN chmod 777 /init.sh
CMD ["/init.sh"]
