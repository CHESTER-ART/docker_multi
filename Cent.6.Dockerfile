FROM centos:centos6.8

RUN sudo echo "net.ipv6.bindv6only = 1" >> /sbin/sysctl.conf \
    && sudo echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /sbin/sysctl.conf \
    && sudo sysctl -p \
    && yum install epel-release -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
