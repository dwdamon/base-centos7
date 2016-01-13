FROM centos:centos7
MAINTAINER David Damon

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="2015-12-23"

RUN yum -y update && yum clean all && yum -y install httpd && yum clean all

# For systemd usage this changes to /usr/sbin/init
# Keeping it as /bin/bash for compatability with previous
CMD ["/bin/bash"]
