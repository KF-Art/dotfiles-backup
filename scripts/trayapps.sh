#!/bin/env bash

function checkdesktop {
	pgrep -u $UID -x xfce4-panel
	exitstatus=$?
}

checkdesktop

if [ $exitstatus = 0 ]; then
	while [ "$exitstatus" = 1 ]; do checkdesktop; sleep 3; done
	echo "Running tray apps"
	wpa-cute -t &
	megasync &
else
	echo "XFCE panel not running"
	while [ "$exitstatus" = 1 ]; do checkdesktop; sleep 3; done
fi
	
