#!/bin/bash
cp zramswapdisable /usr/local/sbin/
cp zramswapenable /usr/local/sbin/

cp systemd-zramswap.service /etc/systemd/system/

systemctl start systemd-zramswap.service
