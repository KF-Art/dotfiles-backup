#!/bin/bash
function checkdesktop {
    wmctrl -l | grep "Escritorio — Plasma"
    exitstatus=$?
}

checkdesktop

 if [ "$exitstatus" = 0 ]; then
    echo "killing kde icons"
    while [ "$exitstatus" = 1 ]; do checkdesktop; sleep 1; done
    wmctrl -c Plasma
 else
    echo "Plasma desktop icons not running"
    while [ "$exitstatus" = 1 ]; do checkdesktop; sleep 1; done
    wmctrl -c Plasma
 fi
