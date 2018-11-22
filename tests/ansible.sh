#!/bin/bash
yum install vim -y
yum install epel-release -y
yum install ansible -y
yum remove epel-release -y
ansible-galaxy install hemanth22.ansible_role_centosgui
cp /root/.ansible/roles/hemanth22.ansible_role_centosgui/tests/ansible.cfg .
cp /root/.ansible/roles/hemanth22.ansible_role_centosgui/tests/inventory .
cp /root/.ansible/roles/hemanth22.ansible_role_centosgui/tests/test.yml .
ansible-playbook test.yml
