FROM centos:centos7.7.1908

RUN sysctl net.ipv6.conf.all.disable_ipv6 net.ipv6.conf.default.disable_ipv6 \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
