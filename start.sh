#!/bin/bash
if (( $EUID != 1000 )); then
    echo "Must not be run as root"
    exit
fi
if grep -q "1" "./step.log"; then
    sudo rpm-ostree update
    sudo rpm-ostree install ansible
    toolbox -y create
    echo "2" > ./step.log
    systemctl reboot
else
    ansible-playbook main.yml --connection=localhost -i hosts.ini
fi