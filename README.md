# ansible

Instances:
1. ansible server
2. non-ansible server
3. non-ansible server
###
docker run -itd --name ansible-server ID
docker run -itd --name non-ansible-server1 ID
docker run -itd --name non-ansible-server2 ID
###

Network:
private shared network between them
###
docker network create private-network
docker network connect private-network ansible-server
docker network connect private-network non-ansible-server1
docker network connect private-network non-ansible-server2
###


Default configuration:
- ansible server:
    - centos
    - ansible
    - openssh-client
    - openssh-server
    - root:centos123
    - python36
- non ansible server:
    - centos
    - epel-release
    - openssh-server
    - root:centos123
    - python36
