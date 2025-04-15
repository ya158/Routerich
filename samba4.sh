#!/bin/sh

opkg update
opkg install samba4-libs
opkg install samba4-server
opkg install luci-app-samba4
opkg install luci-i18n-samba4-ru

uci set samba4.@sambashare[0].name='Routerich'
uci set samba4.@sambashare[0].path='/mnt/sda2'
uci set samba4.@samba[0].interface='NetBird ZeroTier lan'

sed -i 's/bind interfaces only = yes/bind interfaces only = no/' /etc/samba/smb.conf.template

uci commit samba4
