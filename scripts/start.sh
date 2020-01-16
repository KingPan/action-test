#!/bin/sh

wg-quick up wg0

ssserver -c /etc/shadowsocks/config.json

tail -f /dev/null
