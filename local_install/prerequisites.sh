#!/usr/bin/env bash


ansible-playbook -i hosts.minimal \
   /usr/share/ansible/openshift-ansible/playbooks/prerequisites.yml