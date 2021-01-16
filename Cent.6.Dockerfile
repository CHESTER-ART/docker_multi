FROM centos:centos6.8

RUN sudo wget https://github.com/CHESTER-ART/docker_multi/blob/master/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo \
    && yum update -y


VOLUME ["/download"]
