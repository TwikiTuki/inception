FROM debian
RUN apt -y update && apt -y install curl vim
RUN apt -y update && apt -y install nginx 
COPY ./page /var/www/page
EXPOSE 443
EXPOSE 80
#ENTRYPOINT /usr/sbin/nginx start
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
