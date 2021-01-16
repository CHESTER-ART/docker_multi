FROM centos:centos7.7.1908

RUN yum install sudo -y
    

VOLUME ["/download"]
