#!/bin/bash
if (( $EUID != 0 )); then
    echo "Must be run as root"
    exit
fi
dnf update -y
dnf install -y ansible
ansible-playbook local.yml --connection=localhost -i hosts.ini