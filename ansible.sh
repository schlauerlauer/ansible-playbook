#!/bin/bash
if (( $EUID != 0 )); then
    echo "Must be run as root"
    exit
fi
ansible-playbook local.yml --connection=localhost -i hosts.ini