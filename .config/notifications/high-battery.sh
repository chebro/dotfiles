#!/bin/bash

POW=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $(cat /sys/class/power_supply/BAT0/status | cut -c 1 ) = C ] && [ $POW -gt 70 ]; then
	sudo -u chaos DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Almost Charged" -u CRITICAL -I "$HOME/.icons/drops/battery.png"
fi

