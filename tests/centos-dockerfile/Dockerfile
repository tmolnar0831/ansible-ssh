FROM centos:7
MAINTAINER "Tamas Molnar - <tmolnar0831@gmail.com>"
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
      systemd-tmpfiles-setup.service ] || rm -f $i; done); \
      rm -f /lib/systemd/system/multi-user.target.wants/*;\
      rm -f /etc/systemd/system/*.wants/*;\
      rm -f /lib/systemd/system/local-fs.target.wants/*; \
      rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
      rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
      rm -f /lib/systemd/system/basic.target.wants/*;\
      rm -f /lib/systemd/system/anaconda.target.wants/*;
RUN yum -y update
RUN rpm -i https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install ansible
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
