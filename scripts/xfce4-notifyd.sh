#!/bin/bash

function detectwm {
	 pgrep -u $UID -x plasmashell
	 exitstatus=$?
}

detectwm

if [ $exitstatus = 0 ]; then
	echo "Not opening XFCE notification server"
else
    echo "Opening XFCE notification server"
    /usr/lib/xfce4/notifyd/xfce4-notifyd &
fi
