#!/bin/ash

opkg update
opkg install telegrambot
opkg install luci-app-telegrambot
opkg install luci-i18n-telegrambot-ru
opkg install modeminfo-telegram
uci set telegrambot.config.bot_token='7618026740:AAFYLOlyNZ4PmI6BtXzILMrZCruiyDmPKRo'
uci set telegrambot.config.chat_id='346314142'
uci set telegrambot.config.enabled='1'

uci commit telegrambot
