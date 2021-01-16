#!/bin/bash

MUS=$(playerctl metadata --format "{{ artist }} - {{ title }}") 

if [[ $MUS ]]; then
	echo " 󰎈 $MUS "
else
	echo " 󰽳 "
fi
