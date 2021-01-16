FROM centos:centos6.8
CMD ["/bin/bash"]

RUN ls

VOLUME ["/download"]

