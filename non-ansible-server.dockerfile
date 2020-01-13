# docker build - < non-ansible-server -t non-ansible-server:v1

FROM centos:latest
MAINTAINER N.1654

RUN yum install -y openssh-server
RUN yum install -y tmux
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
RUN echo root:centos123 | chpasswd

# RUN tmux new -d -s sshd_running
# RUN tmux send-keys -t sshd_running.0 "/usr/sbin/sshd -D" ENTER
