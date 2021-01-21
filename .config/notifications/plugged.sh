#!/bin/bash

# This script is invoked from /etc/apci/handler.sh

DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Charging" -u LOW -I "$HOME/.icons/linebit/battery_charging.png"

