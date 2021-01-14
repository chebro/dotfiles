#!/bin/bash

POW=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $(cat /sys/class/power_supply/BAT0/status | cut -c 1 ) = D ] && [ $POW -lt 21 ]; then
	DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send "Battery running low 󱃍 " --urgency=CRITICAL
fi

