#!/bin/zsh

CUR=$(echo $(cat /sys/class/backlight/*/brightness) / $(cat /sys/class/backlight/*/max_brightness) | bc -l)
BRI=$(echo $(($CUR * 100)) | cut -d'.' -f1)

dunstify -h string:x-canonical-private-synchronous:backlight "" -h int:value:$BRI -p -u LOW -I ~/.icons/linebit/sun.png 1> /dev/null

