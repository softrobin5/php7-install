# install PHP 7 on Ubuntu Linux 14.04 LTS

FROM ubuntu:14.04

MAINTAINER satish verma, satishsverma@gmail.com

RUN apt-get update
RUN  apt-get install software-properties-common
RUN  add-apt-repository ppa:ondrej/php
RUN  apt-get update
RUN  apt-get install php7.0
# RUN apt-get install php7.0 php7.0-cli php7.0-fpm php7.0-gd php7.0-json php7.0-mysql php7.0-readline

