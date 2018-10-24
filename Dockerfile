FROM ubuntu:18.10
MAINTAINER rgcordon@arsys.es

RUN useradd robertogc

RUN apt-get update
RUN apt-get -y install nginx

RUN echo '<marquee>Hello Arsys!!!</marquee>' \
    > /var/www/html/index.html

RUN apt-get update

EXPOSE 80

ENV DATABASE_IP 192.167.2.9

RUN usermod -aG root robertogc

USER robertogc

VOLUME ["/my-data"]