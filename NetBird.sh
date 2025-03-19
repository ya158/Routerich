#!/bin/sh

opkg update
opkg install netbird
netbird login --setup-key F7CF6878-ABA8-430C-A0C5-F9CA95743C0F
/etc/init.d/netbird enable
/etc/init.d/netbird start
uci -q delete network.NetBird
uci set network.NetBird=interface
uci set network.NetBird.proto='none'
uci set network.NetBird.device='wt0'
uci commit

uci set firewall.@zone[0].network='NetBird'
uci commit firewall
