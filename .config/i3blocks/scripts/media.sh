MUS=$(playerctl metadata --format "{{ artist }} - {{ title }}") 

# if [[ ${#MUS} -gt 20 ]]; then
	# MUS=$(echo $MUS | cut -c 1-20)
    # MUS="$MUS..."
# fi

if [[ $MUS ]]; then
	echo " 󰎈 $MUS "
else
	echo " 󰽳 "
fi
