#!/bin/sh -e

sudo su
#git clone https://github.com/nchxiaowei/shadowsocksr.git
#cd shadowsocksr/
chmod 777 bbr
sh bbr

cp rc.local /etc/
chmod +x /etc/rc.local
cp rc-local.service /etc/systemd/system/
systemctl enable rc-local.service

reboot
echo succ
