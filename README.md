# Description

This is does the initial configuration of Windows hosts in Status.im infra.

* Installs required packages

# Usage

Preferrably included in the `requirements.yml` file in whatever repo you are working on like so:
```yml
- name: infra-role-bootstrap-windows
  src: git@github.com:status-im/infra-role-bootstrap-windows.git
  scm: git
```
Pulling it will require use of your RSA keys configured with your GitHub account.

Once pulled with `ansible-galaxy` you should use as part of `bootstrap-win.yml` playbook:
```yml
---
- name: Bootstrap windows host
  hosts: all
  roles:
    - infra-role-bootstrap-windows
```
And run it with:
```sh
ansible-playbook ansible/bootstrap-win.yml
```

# Sub-Sections

For more details see:

* [tasks/packages](tasks/packages) - Install base packages
