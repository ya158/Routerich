#!/bin/sh

opkg update
opkg install qbittorrent
opkg install luci-app-qbittorrent
opkg install luci-i18n-qbittorrent-ru
uci set qbittorrent.config.enabled='1'
uci set qbittorrent.config.port='8080'
uci set qbittorrent.config.profile_dir='/etc/qbittorrent'

uci commit qbittorrent
