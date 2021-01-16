FROM centos:centos7.7.1908

RUN echo 'ip_resolve=4' >>/etc/yum.conf \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download \
    && ping mirror.datacenter.by -c 3
    

VOLUME ["/download"]
