sudo docker run --name zentao -p 8147:80 --network=host -v /root/zentao:/www/zentaopms -v /root/zentao/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1q2w3e -d easysoft/zentao
