#!/bin/bash

function detectwm {
	 pgrep -u $UID -x i3
	 exitstatus=$?
}

detectwm

if [ $exitstatus = 0 ]; then
	echo "i3 is not compatible with desktop icons"
	killall nemo-desktop
else
#	sleep 4
#	nemo-desktop &
fi
