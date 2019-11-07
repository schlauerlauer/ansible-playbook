#!/bin/bash
if (( $EUID != 0 )); then
    echo "Must not be run as root"
    exit
fi
rpm-ostree update
rpm-ostree install ansible