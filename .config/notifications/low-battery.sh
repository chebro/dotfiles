#!/bin/bash

POW=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$(cut -c 1 < /sys/class/power_supply/BAT0/status)" = D ] && [ "$POW" -lt 20 ]; then
	DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Running Low" -u CRITICAL -I "$HOME/.icons/linebit/battery.png"
elif [ "$(cut -c 1 < /sys/class/power_supply/BAT0/status)" = D ] && [ "$POW" -lt 15 ]; then
    DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Running Low" -u CRITICAL -I "$HOME/.icons/drops/alert.png"
fi

