FROM phpmyadmin/phpmyadmin:4.7.7-1

MAINTAINER Roberto

ARG filename

LABEL dockerfilelabe=hello

#Set TimeZone Madrid
ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN touch ${filename}