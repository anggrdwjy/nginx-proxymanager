#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Nginx Proxy Manager on Container
sudo apt-get update -y
sudo apt-get install curl software-properties-common docker.io -y
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo apt-get update -y
mkdir /home/portainer
mkdir /home/nginx-proxy
mkdir /home/nginx-proxy/data
mkdir /home/nginx-proxy/letsencrypt
cp support/docker-portainer.yml /home/portainer/docker-compose.yml
cp support/docker-nginxproxymanager.yml /home/nginx-proxy/docker-compose.yml
docker network create npm-nw
docker network create npm-internal
docker network create portainer-network
cd /home/portainer
docker-compose up -d
cd /home/nginx-proxy
docker-compose up -d
docker ps -a
ufw allow 22
ufw allow 81
ufw allow 443
ufw allow 9443
ufw enable
systemctl status ufw
echo "   ==============================================   ";
echo "      Dashboard NGINX NPM http://ip-address:81    "
echo "      Email Login : admin@example.com	 	    "
echo "      Password    : changeme			    "
echo "      !!! PLEASE CHANGE YOUR PASSWORD !!!			    "
echo "   ==============================================   ";
