#!/bin/sh

mkdir -p /etc/torrserv
wget  --no-check-certificate -O /etc/torrserv/TorrServer-linux-arm64 https://github.com/YouROK/TorrServer/releases/download/MatriX.134/TorrServer-linux-arm64 && chmod +x /etc/torrserv/TorrServer-linux-arm64
opkg update
opkg install upx
upx --lzma --best /etc/torrserv/TorrServer-linux-arm64
sed -i -e '(/etc/torrserv/TorrServer-linux-arm64 -p 8090 >/dev/null 2>&1 ) &' /etc/rc.local
