FROM centos:centos7.7.1908

RUN sudo echo 'net.ipv6.conf.all.disable_ipv6 = 1' >>/etc/sysctl.conf \
    && sudo echo 'net.ipv6.conf.default.disable_ipv6 = 1' >>/etc/sysctl.conf \
    && sudo sysctl -p \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
