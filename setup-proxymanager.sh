#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Nginx Proxy Manager on Container
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo apt-get update -y
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
