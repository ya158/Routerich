#!/bin/sh

opkg update
opkg install transmission-daemon
opkg install transmission-cli
opkg install transmission-remote
opkg install transmission-web-control
opkg install luci-app-transmission	
opkg install luci-i18n-transmission-ru
uci set transmission.@transmission[0].enabled="1"
uci set transmission.@transmission[0].download_dir='/mnt/sda2/Torrent'
uci set transmission.@transmission[0].config_dir='/etc/transmission'
uci set transmission.@transmission[0].incomplete_dir='/mnt/transmission/incomplete'
uci set transmission.@transmission[0].incomplete_dir_enabled='true'

uci commit transmission
service transmission restart
