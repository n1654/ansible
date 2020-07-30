# Ansible Playground

## Purpose
Create ansible playgroung for futher testing/development

### Play
1. Connect to ansible server from host
```sh
$ ansible-playbook --module-path /root/test/ /root/test/simple_module.yml -u root -k
```
2. Execute command
```sh
$ ansible-playbook --module-path /root/test/ /root/test/simple_module.yml -u root -k
```

### Network
        +----------------+         +-----------------+       +-----------------+
        |  ansible-host  |         |non-ansible-host1|       |non-ansible-host2|
        |      eth0:     |         |      eth0:      |       |      eth0:      |
        |172.20.20.101/24|         |172.20.20.102/24 |       |172.20.20.103/24 |
        +--------+-------+         +---------+-------+       +---------+-------+
                 |                           |                         |
                 |                           |                         |
    +------------+---------------------------+-------------------------+-----------+
                                               ansible_default:   172.20.20.0/24

### Default configuration
- ansible server:
    - centos
    - ansible
    - openssh-client
    - openssh-server
    - root:centos123
    - python36
- non ansible server:
    - alpine
    - openssh-server
    - root:root123
