#!/bin/sh
#sudo su
#git clone https://github.com/nchxiaowei/shadowsocksr.git
#cd shadowsocksr/
dirpath=$(cd `dirname $0`;pwd)

chmod 777 bbr
sh bbr
cp -f rc.local /etc/
chmod +x /etc/rc.local
cp -f rc-local.service /etc/systemd/system/
systemctl enable rc-local.service
reboot
echo succ
