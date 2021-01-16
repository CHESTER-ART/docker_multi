FROM centos:centos6.8

RUN sudo /sbin/sysctl net.ipv6.bindv6only=1 \
    && sudo /sbin/sysctl net.ipv6.conf.default.disable_ipv6 = 1 \
    && sudo sysctl -p \
    && yum install epel-release -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
