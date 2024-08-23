#!/bin/bash
set -e 

yum group install -y "Development Tools"
yum -y install qemu-kvm libvirt virt-install bridge-utils libvirt-devel  libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c
yum install -y https://releases.hashicorp.com/vagrant/2.2.17/vagrant_2.2.17_x86_64.rpm
#rpm -Uvh vagrant_2.2.4_x86_64.rpm

