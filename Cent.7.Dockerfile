FROM centos:centos7.7.1908

RUN echo 'ip_resolve=4' >>/etc/yum.conf
    

VOLUME ["/download"]
