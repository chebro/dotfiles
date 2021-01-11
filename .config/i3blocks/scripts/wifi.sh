WS_4=" 󰤨 "
WS_3=" 󰤥 "
WS_2=" 󰤢 "
WS_1=" 󰤟 "
WS_0=" 󰤫 "
WS_N=" 󰤭 "

SSID=$(iwgetid -r)
SSIG=$(grep $(iwgetid -m | awk '{ printf "%s", $1 }') /proc/net/wireless | awk '{ printf "%i\n", int($3 * 100 / 70) }')

SIG=$(echo $SSIG | rev | cut -c 2- | rev)

get_bat() {
	case $SIG in
		0 | 1)	echo "$WS_0$SSID " ;;
        2 | 3)	echo "$WS_1$SSID " ;;      
        4 | 5) 	echo "$WS_2$SSID " ;;
        6 | 7) 	echo "$WS_3$SSID " ;;
		*)		echo "$WS_4$SSID "
	esac
}

if [[ $SSID ]]; then
	get_bat
else
	echo "$WS_N"
fi

