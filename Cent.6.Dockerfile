FROM centos:centos6.8

RUN sudo /sbin/sysctl net.ipv6.bindv6only=0
    yum install epel-release -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
