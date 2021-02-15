#!/bin/bash

ARCH=" 󰣇 "
DIFF=$(echo "scale=2; ($(date +%s)-$(date -r "$HOME/Misc/checkupdates/updatechecktime" +%s)) / (3600 * 24)" | bc)
PEND=$(cat "$HOME/Misc/checkupdates/pending")
CHECK=$(echo "$DIFF 1" | awk '{print ($1 < $2)}')

if [[ $PEND && $CHECK == 1 ]]; then
    COUNT=$(echo "$PEND"|wc -l)
    echo "$ARCH$COUNT "
    exit 0
elif [[ $CHECK == 1 ]]; then
    echo " 󰄭 "
    exit 0
fi

LIST=$(checkupdates|cut -d' ' -f1)
date >> "$HOME/Misc/checkupdates/updatechecktime"

if [[ $LIST ]]; then                               
    COUNT=$(echo "$LIST"|wc -l)
    echo "$ARCH$COUNT "
    echo "$LIST" > "$HOME/Misc/checkupdates/pending"
else
    echo " 󰄭 "
fi

if [[ $COUNT -ge 1 && $CHECK == 1 ]]; then
    DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify -h string:x-canonical-private-synchronous:updates "$COUNT Updates Available!" "$LIST" -u CRITICAL
fi

