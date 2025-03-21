#!/bin/ash

opkg update
opkg install modeminfo-telegram
opkg install luci-i18n-telegrambot
opkg install luci-i18n-telegrambot-ru
uci set telegrambot.config.bot_token='7618026740:AAFYLOlyNZ4PmI6BtXzILMrZCruiyDmPKRo'
uci set telegrambot.config.chat_id='346314142'
