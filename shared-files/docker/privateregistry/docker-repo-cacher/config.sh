sudo mkdir -p /etc/systemd/system/docker.service.d
## adding my local pull-through cache
sudo touch /etc/systemd/system/docker.service.d/http-proxy.conf
sudo tee /etc/systemd/system/docker.service.d/http-proxy.conf <<EOF
[Service]
Environment="HTTP_PROXY=http://192.168.1.147:3128"
Environment="HTTPS_PROXY=http://192.168.1.147:3128"
EOF
sudo curl http://192.168.1.147:3128/ca.crt > /usr/share/ca-certificates/docker_registry_proxy.crt
sudo echo "docker_registry_proxy.crt" >> /etc/ca-certificates.conf
sudo update-ca-certificates --fresh
