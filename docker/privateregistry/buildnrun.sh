#!/bin/bash

#run temp registry in a ct 
docker run -d -p 5000:5000 -e REGISTRY_HTTP_HOST=https://k8s-master:5000 --restart=always --name registry registry:2

#build and push docker registry image to a temp registry so it may be accessible from k8s
mkdir ~/k8s-registry
git clone https://gitlab.com/gitlab-org/container-registry.git
cd container-registry
sudo docker build -t k8s-master:5000/registry .
sudo docker push k8s-master:5000/registry

# pull through docker mirror registry 
#docker run -d -p 6000:5000 -e REGISTRY_PROXY_REMOTEURL=https://registry-1.docker.io --restart always --name registry registry:2

# private registry
# docker run -e REGISTRY_HTTP_HOST=https://my.registry:5000 -d -p 5000:5000 --name registry registry:2

