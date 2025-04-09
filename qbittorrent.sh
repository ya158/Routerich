#!/bin/sh

opkg update
opkg install qbittorrent
opkg install luci-app-qbittorrent
opkg install luci-i18n-qbittorrent-ru

echo '[Application]>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo 'FileLogger\Path=/etc/qbittorrent/logs>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo '>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo '[BitTorrent]>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo 'Session\DefaultSavePath=/mnt/sda2/Torrent>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo 'Session\TempPath=/mnt/sda2/Torrent>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo 'Session\TempPathEnabled=true>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo '>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo '[Preferences]>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo 'General\Locale=ru>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo 'WebUI\AuthSubnetWhitelist=192.168.1.0/16, 100.97.246.30/32, 100.97.251.204/32, 100.97.252.139/32>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 
echo 'WebUI\AuthSubnetWhitelistEnabled=true>/etc/qbittorrent/qBittorrent/config/qBittorrent.conf 

uci set qbittorrent.config.enabled='1'
uci set qbittorrent.config.port='8080'
uci set qbittorrent.config.profile_dir='/etc/qbittorrent'

uci commit qbittorrent
