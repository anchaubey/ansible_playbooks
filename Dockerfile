FROM ubuntu:latest
RUN apt-get update
RUN apt-get install apache2 -y
CMD /usr/sbin/apache2 -D
