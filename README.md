# Ansible role that Ansible role that manages the SSH

## Requirements

This module requires Ansible 2.x version.

## Role variables

About the default values please consult the defaults directory.

```
sshd_port: 22
sshd_listenaddress: '0.0.0.0'
sshd_permitrootlogin: 'no'
sshd_passwordauthentication: 'no'
sshd_gssapiauthentication: 'no'
sshd_usedns: 'no'
sshd_hostcertificates:
  - ssh_host_ed25519_key-cert.pub
sshd_trustedusercakeys:
  - user_ed25519_ca.pub
sshd_matches:
  tmolnar:
    PasswordAuthentication: 'yes'
sshd_banner: /etc/issue.net
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
