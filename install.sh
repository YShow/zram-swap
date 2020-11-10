#!/bin/bash
cp zramswapdisable /usr/local/sbin/
cp zramswapenable /usr/local/sbin/
cp systemd-zramswap.service /etc/systemd/system/

chown root:root /usr/local/sbin/zramswapdisable
chown root:root /usr/local/sbin/zramswapenable
chown root:root /etc/systemd/system/systemd-zramswap.service

chmod 0755 /usr/local/sbin/zramswapdisable
chmod 0755 /usr/local/sbin/zramswapenable
chmod 0644 /etc/systemd/system/systemd-zramswap.service

systemctl daemon-reload
systemctl start systemd-zramswap.service
systemctl enable systemd-zramswap.service
