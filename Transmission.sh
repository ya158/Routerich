#!/bin/sh

opkg update
opkg install transmission-daemon
opkg install transmission-cli
opkg install transmission-remote
opkg install transmission-web-control
opkg install luci-app-transmission	
opkg install luci-i18n-transmission-ru
uci set transmission.@transmission[0].enabled="1"
uci commit transmission
service transmission restart
