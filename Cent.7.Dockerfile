FROM centos:centos8

RUN su - root \
    && echo 'ftp.byfly.by 82.209.230.71' >> /etc/resolv.conf \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download \
    && ping mirror.datacenter.by -c 3 \
    && ping wcss.pl -c 3 \
    && ping centos1.hti.pl -c 3
    

VOLUME ["/download"]
