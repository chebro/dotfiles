#!/bin/bash

MUS=$(playerctl metadata --format "{{ artist }} - {{ title }}" 2> /dev/null) 

if [[ $MUS ]]; then
	echo " 󰎈 $MUS"
else
	echo " 󰽳"
fi
