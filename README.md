## This Script Automation For Build Nginx Proxy Manager on Docker Compose

## Information

Before using this program, make sure to update the repository `sudo apt update` and install git `sudo apt install git -y` to maximize the running of the program. I am not responsible for any consequences caused by this program. It is recommended to use this script when the new server is installed. This program has been tested on Ubuntu Server 24.04 or Newer

## Features
* Simple Script For Build Nginx Proxy Manager

## Tested Version
* Ubuntu 24.04
* Newer

## Installing Program
```
git clone https://github.com/anggrdwjy/nginx-proxymanager.git
```
```
cd nginx-proxymanager
```
```
chmod -R 777 *
```

## Running Program
```
./setup.sh
```

## Verification Proxmox
```
docker ps -a
```
```
root@nginx-proxymanager:/home/ubuntu# docker ps -a
CONTAINER ID   IMAGE                             COMMAND                  CREATED        STATUS        PORTS                                                                                  NAMES
e3d5ae138e56   jc21/nginx-proxy-manager:latest   "/init"                  31 hours ago   Up 20 hours   0.0.0.0:81->81/tcp, [::]:81->81/tcp, 80/tcp, 0.0.0.0:443->443/tcp, [::]:443->443/tcp   nginx_proxymanager
a186c0faf5e9   mariadb:latest                    "docker-entrypoint.s…"   31 hours ago   Up 20 hours   3306/tcp                                                                               nginx_database
fa47ad941f04   portainer/portainer-ce:lts        "/portainer"             31 hours ago   Up 20 hours   8000/tcp, 9000/tcp, 0.0.0.0:9443->9443/tcp, [::]:9443->9443/tcp                        portainer
root@nginx-proxymanager:/home/ubuntu#

```

## Support

* [:octocat: Follow me on GitHub](https://github.com/anggrdwjy)
* [🔔 Subscribe me on Youtube](https://www.youtube.com/@anggarda.wijaya)


## Bugs

Please open an issue on GitHub with as much information as possible if you found a bug.
* Your Proxmox Version
* All the logs and message outputted
* etc
