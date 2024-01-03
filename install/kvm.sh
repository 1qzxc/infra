#!/bin/bash
set -e

dnf -y install qemu-kvm libvirt virt-install
systemctl enable --now libvirtd

lsmod | grep -i kvm

yum install net-tools -y

ownif=$(route | grep '^default' | grep -o '[^ ]*$')

nmcli connection add type bridge autoconnect yes con-name br0 ifname br0
nmcli connection modify br0 ipv4.addresses 192.168.1.2/24 ipv4.method manual
nmcli connection modify br0 ipv4.gateway 192.168.1.1
nmcli connection modify br0 ipv4.dns 192.168.1.1
nmcli connection modify br0 ipv4.dns-search srv.world
nmcli connection del $ownif
nmcli connection add type bridge-slave autoconnect yes con-name $ownif ifname $ownif master br0


##check and verify that no errors, continue
firewall-cmd --permanent --zone=public --add-service vnc-server
systemctl restart firewalld
reboot

