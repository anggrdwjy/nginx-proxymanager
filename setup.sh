#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Nginx Proxy Manager on Container
sudo apt-get update -y
sudo apt-get install curl software-properties-common docker.io -y
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo apt-get update -y
mkdir /home/portainer
mkdir /home/nginx_proxymanager
mkdir /home/nginx_proxymanager/data
mkdir /home/nginx_proxymanager/letsencrypt
cp support/docker-portainer.yml /home/portainer/docker-compose.yml
cp support/docker-nginxproxy.yml /home/nginx_proxymanager/docker-compose.yml
cd /home/portainer && docker-compose up -d
cd /home/nginx_proxymanager && docker-compose up -d
docker ps -a
ufw allow 22
ufw allow 8123
ufw allow 443
ufw allow 19443
ufw enable
systemctl status ufw
