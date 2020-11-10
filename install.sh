#!/bin/bash
cp zramswapdisable /usr/local/sbin/
cp zramswapenable /usr/local/sbin/
chown root:root /usr/local/sbin/zramswapenable
chown root:root /usr/local/sbin/zramswapdisable

cp systemd-zramswap.service /etc/systemd/system/

systemctl daemon-reload
systemctl start systemd-zramswap.service
systemctl enable systemd-zramswap.service
