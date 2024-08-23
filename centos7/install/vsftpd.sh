yum install vsftpd -y
systemctl enable vsftpd
firewall-cmd --zone=public --permanent --add-port=21/tcp
firewall-cmd --zone=public --permanent --add-service=ftp
firewall-cmd –-reload
firewall-cmd --reload