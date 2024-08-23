#!/bin/bash
mkdir -p  /var/lib/libvirt/images/
cd /var/lib/libvirt/images/
sudo wget http://mirror.corbina.net/pub/Linux/centos/7.6.1810/isos/x86_64/CentOS-7-x86_64-Minimal-1810.iso
sudo virt-install \
--virt-type=kvm \
--name centos7 \
--ram 2048 \
--vcpus=2 \
--os-variant=centos7.0 \
--virt-type=kvm \
--hvm \
--cdrom=/var/lib/libvirt/images/CentOS-7-x86_64-Minimal-1810.iso \
--network=bridge=br0,model=virtio \
--graphics vnc,listen=0.0.0.0 --noautoconsole \
--disk path=/var/lib/libvirt/images/centos7.qcow2,size=40,bus=virtio,format=qcow2

