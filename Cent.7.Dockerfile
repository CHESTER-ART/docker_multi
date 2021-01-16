FROM centos:centos7.7.1908

RUN sudo sysctl -p \
    && yum install epel-release git -y \
    && yum makecache \
    && mkdir /download

VOLUME ["/download"]
