FROM centos:centos7.7.1908

RUN echo 'net.ipv6.conf.all.disable_ipv6 = 1' >>/etc/sysctl.conf \
    && echo 'net.ipv6.conf.default.disable_ipv6 = 1' >>/etc/sysctl.conf \
    && sysctl -p \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
