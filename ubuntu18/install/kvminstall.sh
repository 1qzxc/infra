#!/bin/bash
set -e 
echo 'run with sudo plz' 
apt-get install qemu-kvm libvirt-bin virtinst bridge-utils cpu-checker -y 
kvm-ok

