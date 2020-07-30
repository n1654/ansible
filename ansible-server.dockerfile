FROM centos:latest
MAINTAINER N.1654

RUN yum install -y openssh-clients
RUN yum install -y epel-release
RUN yum install -y ansible
RUN yum install -y python36

RUN mkdir /root/test
COPY library/add_me.py /root/test/add_me.py
COPY playbooks/simple_module.yml /root/test/simple_module.yml

RUN echo >> /etc/ansible/hosts
RUN echo [servers] >> /etc/ansible/hosts
RUN echo non-ansible-server1 ansible_connection=local >> /etc/ansible/hosts
RUN echo non-ansible-server2 ansible_connection=local >> /etc/ansible/hosts
