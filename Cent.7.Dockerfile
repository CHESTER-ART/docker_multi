FROM centos:centos7.7.1908

RUN yum install deltarpm -y \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download \
    && ping mirror.datacenter.by -c 3 \
    && ping wcss.pl -c 3 \
    && ping centos1.hti.pl -c 3
    

VOLUME ["/download"]
