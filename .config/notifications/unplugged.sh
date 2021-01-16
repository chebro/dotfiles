#!/bin/bash

# This script is invoked from /etc/apci/handler.sh

DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:battery "Battery Status" "Unplugged" -u LOW -I ~/.icons/drops/battery.png

