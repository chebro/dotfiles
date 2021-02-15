#!/bin/bash

MUS=$(playerctl metadata --format "{{ artist }} - {{ title }}" 2> /dev/null) 
MPD=$(mpc|head -n1)
MPD_STATUS=$(mpc | awk -F'[][]' '{ printf "%s", $2 }')
if [[ $MUS ]]; then
	echo " 󰎈 $MUS"
elif [[ $(mpc|wc -l) -gt 1 && $MPD_STATUS == 'playing' ]]; then
    echo " 󰎈 $MPD"
else
	echo " 󰽳"
fi
