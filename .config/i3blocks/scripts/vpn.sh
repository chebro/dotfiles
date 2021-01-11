if [[ $(nmcli c show --active | grep vpn) ]]; then  
	echo " 󰖂 ON "
else
	echo " 󰖂 OFF "
fi

