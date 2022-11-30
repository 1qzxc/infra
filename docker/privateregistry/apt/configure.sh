#https://github.com/sameersbn/docker-apt-cacher-ng
sudo echo 'Acquire::HTTP::Proxy "http://192.168.1.147:3142";' >> /etc/apt/apt.conf.d/01proxy
sudo echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy

# https://blog.packagecloud.io/eng/2015/05/05/using-apt-cacher-ng-with-ssl-tls/


# https://docs.docker.com/samples/apt-cacher-ng/
#sudo echo 'Acquire::http { Proxy "http://192.168.1.147:3142"; };' >> /etc/apt/apt.conf.d/01proxy
#export http_proxy=http://192.168.1.147:3142
#Change your sources.list entries to start with http://dockerhost:3142/




# dockerfile pre-config example 
# syntax=docker/dockerfile:1
#FROM ubuntu
#RUN echo 'Acquire::http { Proxy "http://dockerhost:3142"; };' >> /etc/apt/apt.conf.d/01proxy
#RUN apt-get update && apt-get install -y vim git

# docker build -t my_ubuntu .







