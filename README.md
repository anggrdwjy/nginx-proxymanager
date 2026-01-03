## This Script Automation For Build Nginx Proxy Manager on Docker Compose

## Information

Before using this program, make sure to update the repository `sudo apt update` and install git `sudo apt install git -y` to maximize the running of the program. I am not responsible for any consequences caused by this program. It is recommended to use this script when the new server is installed. This program has been tested on Ubuntu Server 24.04 or Newer

## Features
* Simple Script For Build Nginx Proxy Manager
* Include Portainer for Manage Docker Container
* Activation Firewall

## Tested Version
* Ubuntu 24.04
* Newer

## Installing Program
```
root@ubuntu:/home/ubuntu# git clone https://github.com/anggrdwjy/nginx-proxymanager.git          
Cloning into 'nginx-proxymanager'...
remote: Enumerating objects: 134, done.
remote: Counting objects: 100% (134/134), done.
remote: Compressing objects: 100% (130/130), done.
remote: Total 134 (delta 36), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (134/134), 43.54 KiB | 228.00 KiB/s, done.
Resolving deltas: 100% (36/36), done.
root@ubuntu:/home/ubuntu# cd nginx-proxymanager/
root@ubuntu:/home/ubuntu/nginx-proxymanager# chmod -R 777 *
root@ubuntu:/home/ubuntu/nginx-proxymanager# ls -l
total 12
-rwxrwxrwx 1 root root 2010 Jan  3 09:41 README.md
-rwxrwxrwx 1 root root  848 Jan  3 09:41 setup.sh
drwxrwxrwx 2 root root 4096 Jan  3 09:41 support
root@ubuntu:/home/ubuntu/nginx-proxymanager# 
```

## Running Program
```
root@ubuntu:/home/ubuntu/nginx-proxymanager# ./setup.sh 
Hit:1 http://id.archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://id.archive.ubuntu.com/ubuntu noble-updates InRelease          
Hit:3 http://id.archive.ubuntu.com/ubuntu noble-backports InRelease          
Get:4 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]    
Get:5 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [21.5 kB]
Get:6 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [212 B]
Get:7 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [71.4 kB]
Get:8 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [208 B]
Fetched 219 kB in 2s (97.0 kB/s)           
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
CONTAINER ID   IMAGE                             COMMAND                  CREATED          STATUS          PORTS                                                                                      NAMES
4fb19acc8fd0   jc21/nginx-proxy-manager:latest   "/init"                  9 seconds ago    Up 6 seconds    80/tcp, 0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:8123->81/tcp, [::]:8123->81/tcp   nginx_proxymanager
058c2ca773c2   mariadb:latest                    "docker-entrypoint.s…"   13 seconds ago   Up 10 seconds   3306/tcp                                                                                   nginx_database
00d9e002177b   portainer/portainer-ce:lts        "/portainer"             7 minutes ago    Up 7 minutes    8000/tcp, 9000/tcp, 0.0.0.0:19443->9443/tcp, [::]:19443->9443/tcp                          portainer
Rules updated
Rules updated (v6)
Rules updated
Rules updated (v6)
Rules updated
Rules updated (v6)
Rules updated
Rules updated (v6)
Command may disrupt existing ssh connections. Proceed with operation (y|n)? y
Firewall is active and enabled on system startup
● ufw.service - Uncomplicated firewall
     Loaded: loaded (/usr/lib/systemd/system/ufw.service; enabled; preset: enabled)
     Active: active (exited) since Sat 2026-01-03 09:40:15 UTC; 13min ago
       Docs: man:ufw(8)
   Main PID: 363 (code=exited, status=0/SUCCESS)
        CPU: 3ms

Jan 03 09:40:15 ubuntu systemd[1]: Starting ufw.service - Uncomplicated firewall...
Jan 03 09:40:15 ubuntu systemd[1]: Finished ufw.service - Uncomplicated firewall.
root@ubuntu:/home/ubuntu/nginx-proxymanager# 
```

## Verification Docker
```
root@ubuntu:/home/ubuntu/nginx-proxymanager# docker ps -a
CONTAINER ID   IMAGE                             COMMAND                  CREATED          STATUS          PORTS                                                                                      NAMES
4fb19acc8fd0   jc21/nginx-proxy-manager:latest   "/init"                  52 seconds ago   Up 49 seconds   80/tcp, 0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:8123->81/tcp, [::]:8123->81/tcp   nginx_proxymanager
058c2ca773c2   mariadb:latest                    "docker-entrypoint.s…"   56 seconds ago   Up 52 seconds   3306/tcp                                                                                   nginx_database
00d9e002177b   portainer/portainer-ce:lts        "/portainer"             8 minutes ago    Up 8 minutes    8000/tcp, 9000/tcp, 0.0.0.0:19443->9443/tcp, [::]:19443->9443/tcp                          portainer
root@ubuntu:/home/ubuntu/nginx-proxymanager# 
```

## Support

* [:octocat: Follow me on GitHub](https://github.com/anggrdwjy)
* [🔔 Subscribe me on Youtube](https://www.youtube.com/@anggarda.wijaya)


## Bugs

Please open an issue on GitHub with as much information as possible if you found a bug.
* Your Docker Version
* All the logs and message outputted
* etc
