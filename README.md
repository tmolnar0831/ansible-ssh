# Ansible role that Ansible role that manages the SSH

[![build status](https://gitlab.com/stiron/ansible-ssh/badges/master/build.svg)](https://gitlab.com/stiron/ansible-ssh/commits/master)

## Requirements

This module requires Ansible 2.x version.

## Role variables

```
sshd_port: 22
sshd_listenaddress: '0.0.0.0'
sshd_permitrootlogin: 'no'
sshd_passwordauthentication: 'yes'
sshd_gssapiauthentication: 'no'
sshd_usedns: 'no'
```

## Examples

```
- hosts: all 
  roles:
    - ssh
```

## Dependencies

None

## License

MIT

## Author

Tamas Molnar - <tmolnar0831@gmail.com>
