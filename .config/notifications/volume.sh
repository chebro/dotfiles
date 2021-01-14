#!/bin/bash

VOL=$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)|cut -d'%' -f1)

dunstify -h string:x-canonical-private-synchronous:audio "" -h int:value:$VOL -p -u LOW -I ~/.icons/linebit/volume.png 1> /dev/null

