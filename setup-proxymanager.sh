#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Nginx Proxy Manager on Container
apt update -y
apt install software-properties-common -y
apt install ca-certificates curl gnupg -y
apt update && apt upgrade -y
apt install docker.io -y
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
mkdir /home/nginx-proxy
mkdir /home/nginx-proxy/data
mkdir /home/nginx-proxy/letsencrypt
cp support/docker-compose.yml /home/nginx-proxy/
docker network create npm-nw
docker network create npm-internal
cd /home/nginx-proxy
docker-compose up -d
docker ps -a
ufw allow 22
ufw allow 80
ufw allow 81
ufw allow 443
ufw enable
systemctl status ufw
echo "   ==============================================   ";
echo "      Dashboard NGINX NPM http://ip-address:81    "
echo "      Email Login : admin@example.com	 	    "
echo "      Password    : changeme			    "
echo "   ==============================================   ";
