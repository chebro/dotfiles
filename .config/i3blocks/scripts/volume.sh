LO=" 󰕿"
HI=" 󰕾 "
MO=" 󰖀 "
MU=" 󰝟"

MIC_ON=" 󰍮 "
MIC_OF=" 󰍭"

# amixer sset Capture toggle
# amixer sget Capture

VOL=$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master))
VO=$(echo $VOL | cut -d'%' -f1)
V=$(echo $VO | rev | cut -c 2- | rev)

get_vol_icon() {
	if [[ $VO -gt 50 ]]; then
		echo "$HI$V"
	elif [[ $VO -gt 25 ]]; then
		echo "$MO$V"
	else 
		echo "$LO$V"
	fi	
}

if [[ $(amixer get Master | grep '\[on\]') ]]; then
	get_vol_icon
else
	echo "$MU"
fi

