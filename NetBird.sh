#!/bin/sh

opkg update
opkg install netbird
netbird login --setup-key 8C415D14-4308-41C5-AB9E-0A9D04B34B9F
/etc/init.d/netbird enable
/etc/init.d/netbird start
uci -q delete network.NetBird
uci set network.NetBird=interface
uci set network.NetBird.proto='none'
uci set network.NetBird.device='wt0'
uci commit

uci set firewall.@zone[0].network='NetBird'
uci commit firewall
