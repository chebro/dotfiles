#!/bin/zsh

CUR=$(echo $(cat /sys/class/backlight/*/brightness) / $(cat /sys/class/backlight/*/max_brightness) | bc -l)
BRI=$(echo $((CUR * 500)) | cut -d'.' -f1)

DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:backlight "" -h int:value:"$BRI" -p -u LOW -I "$HOME/.icons/linebit/sun.png" 1> /dev/null

