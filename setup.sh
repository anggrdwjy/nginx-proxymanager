#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Nginx Proxy Manager on Container
sudo apt-get update -y
sudo apt-get install curl software-properties-common docker.io -y
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo apt-get update -y
docker network create portainer_network
docker volume create portainer_data
docker network create npm_network
docker network create npm_internal
mkdir /home/portainer
mkdir /home/nginx-proxy
mkdir /home/nginx-proxy/data
mkdir /home/nginx-proxy/letsencrypt
cp support/docker-portainer.yml /home/portainer/
cd /home/portainer && docker-compose -f docker-portainer.yml up -d
cp support/docker-nginxproxy.yml /home/nginx-proxy/
cd /home/nginx-proxy && docker-compose -f docker-nginxproxy.yml up -d
docker ps -a
ufw allow 22
ufw allow 81
ufw allow 443
ufw allow 9443
ufw enable
systemctl status ufw
