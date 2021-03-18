#!/bin/bash

POW=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$(cut -c 1 < /sys/class/power_supply/BAT0/status)" = C ] && [ "$POW" -gt 80 ]; then
	DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Almost Charged" -u CRITICAL -I "$HOME/.icons/drops/battery.png"
fi

