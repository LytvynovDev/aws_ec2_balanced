#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
export TZ=Europe/Stockholm

# Update OS
apt update -y && apt upgrade -y

# Install Docker
apt install apt-transport-https ca-certificates curl software-properties-common -y\
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -\
&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y\
&& apt update -y\
&& apt install docker-ce docker-ce-cli containerd.io -y\
&& systemctl start docker\
&& systemctl enable docker

# Launch Nginx
docker pull nginx:1.27.0-alpine\
&& mkdir -p /usr/local/nginx/\
&& docker run -d\
    --name nginx\
    -p 80:80\
    nginx:1.27.0-alpine
