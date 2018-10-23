FROM ubuntu:18.10
MAINTAINER rgcordon@arsys.es

RUN apt-get update
RUN apt-get -y install nginx

RUN echo '<marquee>Hello Arsys!!!</marquee>' \
    > /var/www/html/index.html

RUN apt-get update

EXPOSE 80

WORKDIR /var/www/html

ENTRYPOINT ["nginx","-g daemon off;"]