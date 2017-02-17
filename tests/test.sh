#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
RDIR="$( dirname "$SOURCE" )"
cd $RDIR
echo "localhost ansible_connection=local" > inventory

ansible-playbook --syntax-check -i inventory test.yml
ansible-playbook -i inventory test.yml -u root --become-user=root
