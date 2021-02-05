#!/usr/bin/env bash

dir="$HOME/.config/rofi/powermenu"
rofi_command="rofi -theme $dir/menu.rasi -config $dir/config-powermenu.rasi"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# # Confirmation
# confirm_exit() {
# 	rofi -dmenu\
# 		-i\
# 		-no-fixed-num-lines\
# 		-p "Are You Sure? : "\
# 		-theme $dir/confirm.rasi
# }

# # Message
# msg() {
# 	rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
# }

# Variable passed to rofi
options="$shutdown\n$reboot\n$suspend\n$lock\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 2)"
case $chosen in
    "$shutdown")
		# ans=$(confirm_exit &)
		ans="yes"
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			systemctl poweroff
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    "$reboot")
		# ans=$(confirm_exit &)
		ans="yes"
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			systemctl reboot
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    "$lock")
			"$HOME/.config/i3lock/lock.sh"
        ;;
    "$suspend")
		# ans=$(confirm_exit &)
		ans="yes"
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			mpc -q pause
			amixer set Master mute
			systemctl suspend
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    "$logout")
		# ans=$(confirm_exit &)
		i3-msg exit
        ;;
esac
