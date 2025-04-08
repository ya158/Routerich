#!/bin/sh

opkg update
opkg install minidlna
opkg install luci-app-minidlna
opkg install luci-i18n-minidlna-ru
uci set minidlna.config.friendly_name='Routerich DLNA Server'
uci set minidlna.config.enabled='1'
uci set minidlna.config.root_container='B'
uci set minidlna.config.db_dir='/etc/minidlna'
uci set minidlna.config.media_dir='/mnt/sda2'
uci commit minidlna
