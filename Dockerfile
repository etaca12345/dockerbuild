FROM ubuntu:16.04
MAINTAINER etaca12345@outlook.kr
LABEL purpose="HansdOnLab"
RUN apt-get update
RUN apt-get Install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo welcome to docker automated!!! >>> test.html"]
EXPOSE 80
RUN ["apachectl","-DFOREGROUND"]