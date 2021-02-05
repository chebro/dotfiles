#!/bin/bash

#LIST=$(checkupdates|cut -d' ' -f1)
ARCH=" 󰣇 "

if [[ $LIST ]]; then                               
    COUNT=$(echo "$LIST"|wc -l)
    echo "$ARCH$COUNT "
else
    echo " 󰄭 "
fi

if [[ $COUNT -ge 1 ]]; then
    DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:updates "$COUNT Updates Available!" "$LIST" -u CRITICAL
fi
