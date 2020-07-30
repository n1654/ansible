# Ansible Playground

### Play
1. Connect to ansible server from host
```sh
$ ansible-playbook --module-path /root/test/ /root/test/simple_module.yml -u root -k
```
2. Execute command
```sh
$ ansible-playbook --module-path /root/test/ /root/test/simple_module.yml -u root -k
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
    - alpine
    - openssh-server
    - root:root123
