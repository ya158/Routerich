#!/bin/sh

opkg update
opkg install netbird
netbird login --setup-key 772B22F0-983E-437E-AF90-F670506DCAC5
/etc/init.d/netbird enable
/etc/init.d/netbird start
uci -q delete network.NetBird
uci set network.NetBird=interface
uci set network.NetBird.proto='none'
uci set network.NetBird.device='wt0'
uci commit

uci set firewall.@zone[0].network='NetBird'
uci commit firewall
