FROM centos:centos7.7.1908

RUN echo 'ip_resolve=4' >>/etc/yum.conf \
    && yum install deltarpm -y \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download \
    && ping mirror.datacenter.by -c 3 \
    && ping wcss.pl -c 3 \
    && ping centos1.hti.pl
    

VOLUME ["/download"]
