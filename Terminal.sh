#!/bin/sh

uci set ttyd.@ttyd[0].interface='0.0.0.0'
uci commit ttyd
#/etc/init.d/ttyd restart
#/etc/init.d/rpcd restart
#/etc/init.d/uhttpd restart
