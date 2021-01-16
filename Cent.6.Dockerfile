FROM centos:centos6.8

RUN ping mail.ru -c 3

VOLUME ["/download"]
