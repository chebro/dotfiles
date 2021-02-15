#!/bin/bash

POW=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $(cat "/sys/class/power_supply/BAT0/status" | cut -c 1 ) = D ] && [ $POW -lt 20 ]; then
	sudo -u chaos DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Running Low" -u CRITICAL -I "$HOME/.icons/linebit/battery.png"
elif [ $(cat "/sys/class/power_supply/BAT0/status" | cut -c 1 ) = D ] && [ $POW -lt 15 ]; then
dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Running Low" -u CRITICAL -I "$HOME/.icons/drops/alert.png"
fi

