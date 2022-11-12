#!/bin/bash
function checkwm {
    wmctrl -m
    exitstatus=$?
}

checkwm

 if [ "$exitstatus" = 0 ]; then
    echo "opening polybar"
    while [ "$exitstatus" = 1 ]; do checkwm; sleep 1; done
    ~/scripts/polybar-fluxbox.sh
 else
    echo "fluxbox not running"
    while [ "$exitstatus" = 1 ]; do checkwm; sleep 1; done
    ~/scripts/polybar-fluxbox.sh
 fi
