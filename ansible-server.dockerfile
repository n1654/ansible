# docker build - < ansible-server -t ansible-server:v1

FROM centos:latest
MAINTAINER N.1654

RUN yum install -y openssh-clients
RUN yum install -y epel-release
RUN yum install -y ansible
RUN yum install -y python36

RUN echo >> /etc/ansible/hosts
RUN echo [servers] >> /etc/ansible/hosts
RUN echo non-ansible-server1 ansible_connection=ssh >> /etc/ansible/hosts
RUN echo non-ansible-server2 ansible_connection=ssh >> /etc/ansible/hosts
