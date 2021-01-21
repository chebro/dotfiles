#!/bin/bash

VOL=$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)|cut -d'%' -f1)

DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:audio "" -h int:value:"$VOL" -u LOW -I "$HOME/.icons/linebit/volume.png" 1> /dev/null

