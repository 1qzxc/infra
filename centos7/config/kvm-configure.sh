#!/bin/bash
set -e

ownif=$(route | grep '^default' | grep -o '[^ ]*$')
## need to implement check that brX already exists and add br(X+1)
echo "BRIDGE=br0" >> /etc/sysconfig/network-scripts/ifcfg-$ownif
echo 'DEVICE="br0"
# I am getting ip from DHCP server # \
BOOTPROTO="dhcp"
IPV6INIT="yes"
IPV6_AUTOCONF="yes"
ONBOOT="yes"
TYPE="Bridge"
DELAY="0" ' > /etc/sysconfig/network-scripts/ifcfg-br0
systemctl restart NetworkManager 
systemctl restart network 
##check and verify that no errors, continue
firewall-cmd --permanent --zone=public --add-service vnc-server
systemctl restart firewalld
reboot
