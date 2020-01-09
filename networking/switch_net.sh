#!/bin/bash


if [ "$1" = "parked" ]; then
    cp 50-cloud-init.yaml.parked /etc/netplan/50-cloud-init.yaml
    sed -i "s/192.168.2.1/127.0.1.1/" /etc/hosts
    netplan apply
fi


if [ "$1" = "outdoor" ]; then
    cp 50-cloud-init.yaml.outdoor /etc/netplan/50-cloud-init.yaml
    sed -i "s/127.0.1.1/192.168.2.1/" /etc/hosts
    netplan apply
fi
