#!/bin/bash
if (( $EUID != 1000 )); then
    echo "Must not be run as root"
    exit
fi
sudo ./rpm-ostree.sh
toolbox -y create
systemctl reboot