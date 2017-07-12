FROM ubuntu:16.04

MAINTAINER lukess <luke.skywalker.sun@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV GRAPHITE_VERSION 0.9.15

COPY install/. /root/.
RUN /root/install.sh

WORKDIR /opt

# Nginx, Uwsgi, and cleanup
EXPOSE 3000


COPY init/init.sh /usr/bin/init.sh
CMD /usr/bin/init.sh
