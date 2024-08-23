#!/bin/bash
set -e

cp /etc/samba/smb.conf /etc/samba/smb.conf.orig
cat /dev/null > /etc/samba/smb.conf
cp ./smb.conf /etc/samba/smb.conf
mkdir /mnt/2tb
mkdir /mnt/4tb
mkdir /mnt/4tb2
lsblk -l
mount /dev/sda1 /mnt/4tb/
mount /dev/sde1 /mnt/2tb/
mount /dev/sdd2 /mnt/4tb2/
setenforce 0
sed -i -e 's/enforcing/permissive/g' /etc/selinux/config
cat /etc/selinux/config | grep permissive
chcon -t samba_share_t /mnt/2tb/
chmod -R 0755 /mnt/2tb/
chown -R nobody:nobody /mnt/2tb/
chcon -t samba_share_t /mnt/4tb/
chmod -R 0755 /mnt/4tb/
chown -R nobody:nobody /mnt/4tb/
chcon -t samba_share_t /mnt/4tb2/
chmod -R 0755 /mnt/4tb2/
chown -R nobody:nobody /mnt/4tb2/ 
systemctl enable smb.service
systemctl enable nmb.service
systemctl restart smb.service
systemctl restart nmb.service
#  vi /etc/fstab
# echo '/dev/sda1 /mnt/2tb default 0 0 0 >> /etc/fstab
#chcon -R -t samba_share_t /mnt/2tb # -t??
