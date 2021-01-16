FROM centos:centos6.8

RUN ls

VOLUME ["/download"]
CMD ["/bin/bash"]
