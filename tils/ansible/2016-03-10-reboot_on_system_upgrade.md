# Reboot on system upgrade
 
_Category: ansible_
_Generated on 2016-03-10_

_source: https://coderwall.com/p/0nckqg/ansible-reboot-ubuntu-if-needed_
_source: http://elnur.pro/rebooting-servers-one-by-one-with-ansible/_

Reboot your ansible inventory one host by one if needed by system upgrade.

This is valid for Ubuntu.

Ansible playbook:

```yaml
---
- hosts: all # all hosts
  serial: 1  # one by one
  sudo: yes  # shutdown requires sudo
  tasks:
    - name: Reboot system if required
      command: shutdown -r now 'Rebooting to complete system upgrade' removes=/var/run/reboot-required
    - name: Wait for the server to reboot
      local_action: wait_for host={{inventory_hostname}} port=22
```