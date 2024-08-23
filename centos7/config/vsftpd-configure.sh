sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.default
#vi /etc/vsftpd/vsftpd.conf
systemctl restart vsftpd
systemctl status vsftpd
mkdir -p /var/ftp/pub
chown nobody:nogroup /var/ftp/pub
chown nobody:nobody /var/ftp/pub
echo "vsftpd test file" | sudo tee /var/ftp/pub/test.txt
ls /var/ftp/pub/
#vi /etc/vsftpd.conf
#vi /etc/vsftpd/vsftpd.conf
systemctl status vsftpd
systemctl restart vsftpd
systemctl status vsftpd
#mount --bind /mnt/2tb/share/biblioteka/mylib/computer\ science/devops/virtual.cloud/Microsoft/ /var/ftp/pub/
#umount /var/ftp/pub/