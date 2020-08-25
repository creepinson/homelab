# My Homelab

Hello there. This is my dockerized homelab setup containing some of the configuration files needed for it to work.

## The Homelab Itself

In my homelab I have a [Raspberry Pi i Zero W](https://www.raspberrypi.org/products/raspberry-pi-zero-w/) that is currently offline, but is running [alpine linux](alpinelinux.org). I also have a [Dell PowerEdge R710](https://www.ebay.com/itm/Dell-PowerEdge-R720-2x-E5-2620v2-12-Cores-32GB-RAM-H710-2x600GB-SAS/172918861656?ssPageName=STRK%3AMEBIDX%3AIT&_trksid=p2057872.m2749.l2649) I got from ebay that runs my docker compose files. As of now, the R710 is running Proxmox with a single Ubuntu 18.04 VM.

## Servers

On my r710's nginx vm I have a nginx server and nginx proxy manager. [Nginx Proxy Manager](https://nginxproxymanager.com) is a simple web interface for configuring nginx. I have my nextcloud & netdata servers from docker-compose proxied through Nginx Proxy Manager to [my external domain, homelab.theoparis.com](https://homelab.theoparis.com).

I am also using cloudflare to host my DNS records for my domains, as well as most of the SSL certificates for HTTPS encryption.

## Security

For security reasons, I have not port-forwarded SSH directly, but instead decided to go the OpenVPN route and connect to my server remotely through a vpn profile. [I used this script to install it](https://github.com/Angristan/OpenVPN-install).

## Services

I am running nextcloud, mysql, heimdall, nginx, nginx proxy manager, wordpress, grafana + influxdb + telegraf & more.

## Running For Yourself

First, you will need to install docker and docker compose on your system, and then you can run

```bash
./create.sh
docker-compose up -d
```

to create the final docker compose configuration file and run it.
