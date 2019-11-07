#!/bin/bash
if (( $EUID != 0 )); then
    echo "Must be run as root"
    exit
fi
rpm-ostree update
rpm-ostree install ansible
systemctl reboot