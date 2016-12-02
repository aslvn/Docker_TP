FROM ubuntu

MAINTAINER anis

RUN apt-get update && apt-get install -y nginx

ADD /Library/WebServer/Documents/index.html.en /var/www/html/index.html

VOLUME /var/www/html

EXPOSE 80
 
CMD ["nginx","-g","daemon off;"] 
