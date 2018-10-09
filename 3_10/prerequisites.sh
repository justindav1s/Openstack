#!/usr/bin/env bash


nohup ansible-playbook -i hosts.3.10 \
   /usr/share/ansible/openshift-ansible/playbooks/prerequisites.yml \
   > prereqs.log &

sleep 5

tail -f prereqs.log