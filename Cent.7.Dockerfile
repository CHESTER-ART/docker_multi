FROM centos:centos7.7.1908

RUN echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6 \
    && echo 1 > /proc/sys/net/ipv6/conf/default/disable_ipv6
    

VOLUME ["/download"]
