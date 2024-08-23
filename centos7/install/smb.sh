#!/bin/bash
set -e

#samba install and configure
yum install samba samba-client samba-common -y
yum install ntfs-3g -y
firewall-cmd --permanent --zone=public --add-service=samba
firewall-cmd --reload