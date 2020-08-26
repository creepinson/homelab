#! /bin/bash
echo root:${ROOT_PASSWORD} | chpasswd && sed -i 's;ssl=1;ssl=0;' /etc/webmin/miniserv.conf && systemctl enable cron && service webmin start && httpd-foreground
