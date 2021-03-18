#!/bin/bash

if nmcli c show --active | grep -q vpn; then
	echo " 󰖂 ON "
else
	echo " 󰖂 OFF "
fi

