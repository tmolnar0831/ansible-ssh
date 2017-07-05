# Ansible role that manages the SSH daemon

This role installs and configures the OpenSSH daemon on *NIX machines.

The base template for the `/etc/ssh/sshd_config` file is from RHEL7, but it has
been tested with **>= Ubuntu 14.04** and **Debian Jessie** as well.

## Requirements

This module requires Ansible 2.x version.

## Role variables

About the default values please consult the `defaults` directory.

Almost all default data has been set with respect to the Unix/Linux SSH defaults.

Without any configured variables the role installs a basic OpenSSH server.

```
---
sshd_port: 22
sshd_listenaddress: '0.0.0.0'
sshd_permitrootlogin: 'no'
sshd_passwordauthentication: 'yes'
sshd_gssapiauthentication: 'no'    # different from RHEL default
sshd_usedns: 'no'                  # different from RHEL default
sshd_hostcertificates:
  - ssh_host_ed25519_key-cert.pub
sshd_trustedusercakeys:
  - user_ed25519_ca.pub
sshd_matches:
  tmolnar:
    PasswordAuthentication: 'yes'
sshd_banner: /etc/issue.net
sshd_addressfamily: any
sshd_hostkeys:
  - ssh_host_rsa_key
  - ssh_host_ecdsa_key
  - ssh_host_ed25519_key
sshd_keyregenerationinterval: '1h'
sshd_serverkeybits: 1024
sshd_syslogfacility: AUTHPRIV
sshd_loglevel: INFO
sshd_logingracetime: '2m'
sshd_strictmodes: 'yes'
sshd_maxauthtries: '6'
sshd_maxsessions: '10'
sshd_rsaauthentication: 'yes'
sshd_pubkeyauthentication: 'yes'
sshd_permitemptypasswords: 'no'
sshd_secure_ciphers:
  - aes256-ctr
  - aes192-ctr
  - aes128-ctr
```

## Examples

```
---
- hosts: all 
  roles:
    - ssh
  vars:
    sshd_passwordauthentication: no
    sshd_permitrootlogin: yes
    sshd_maxauthtries: 3
    sshd_hostkeys:
      - ssh_host_ed25519_key
```

## Dependencies

None

## License

MIT

## Author

Tamas Molnar - <tmolnar0831@gmail.com>
