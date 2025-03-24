#!/bin/sh

uci set vsftpd.anonymous.enabled='1'
uci set vsftpd.anonymous.root='/mnt/sda2'
uci set vsftpd.anonymous.writemkdir='1'
uci set vsftpd.anonymous.upload='1'
uci set vsftpd.anonymous.others='1'
uci commit vsftpd
