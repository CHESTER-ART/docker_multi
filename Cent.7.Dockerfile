FROM centos:centos7.7.1908

RUN echo 'proxy = 192.168.37.1: 3128' >>/etc/yum.conf \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
