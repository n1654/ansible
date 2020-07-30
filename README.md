# Ansible Playground

### Docker Instances
1. ansible server
```sh
$ docker run -itd --name ansible-server ID
```
2. non-ansible server1
```sh
$ docker run -itd --name non-ansible-server1 ID
```
3. non-ansible server2
```sh
$ docker run -itd --name non-ansible-server2 ID
```

### Network
Private shared network between them
```sh
$ docker network create private-network
$ docker network connect private-network ansible-server
$ docker network connect private-network non-ansible-server1
$ docker network connect private-network non-ansible-server2
```

### Default packages
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
