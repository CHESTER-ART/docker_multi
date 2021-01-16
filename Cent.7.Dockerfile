FROM centos:centos7.7.1908

RUN sudo sysctl -p
    

VOLUME ["/download"]
