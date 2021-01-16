FROM centos:centos7.7.1908

RUN yum install sudo -y \
    && touch /etc/sysctl.d/disableipv6.conf
    

VOLUME ["/download"]
