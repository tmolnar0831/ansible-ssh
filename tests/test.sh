#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
RDIR="$( dirname "$SOURCE" )"
cd $RDIR
echo "localhost ansible_connection=local ansible_user=root" > inventory

# Testing the syntax
ansible-playbook --syntax-check -i inventory test.yml

# First run
ansible-playbook -i inventory test.yml

# Idempotence
ansible-playbook -i inventory test.yml | grep -q 'changed=0.*failed=0' || exit 1


