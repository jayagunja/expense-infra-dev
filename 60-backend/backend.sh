#!/bin/bash

dnf install ansible -y

#push
#ansible-playbook -i inventory mysql.yaml

#pull
ansible-pull -i localhost, -U https://github.com/jayagunja/expense-ansible-roles-tfm.git main.yaml -e COMPONENT=backend -e ENVIRONMENT=$1