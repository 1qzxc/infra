sudo docker run --rm -d --name docker_registry_proxy -it        -p 0.0.0.0:3128:3128 -e ENABLE_MANIFEST_CACHE=true        -v $(pwd)/docker_mirror_cache:/docker_mirror_cache
       -v $(pwd)/docker_mirror_certs:/ca        rpardini/docker-registry-proxy:0.6.2


