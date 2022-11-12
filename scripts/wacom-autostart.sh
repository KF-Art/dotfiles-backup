#!/bin/bash

function checkstatus {
    pgrep -u $UID -x krita    
    exitstatus=$?
}

checkstatus

 if [ "$exitstatus" = 0 ]; then
    echo "Configuring Wacom keybindings"
    while [ "$exitstatus" = 1 ]; do checkstatus; sleep 1; done
    ~/scripts/wacom.sh
 else
    echo "Krita is not running"
    while [ "$exitstatus" = 1 ]; do checkstatus; sleep 1; done
    ~/scripts/wacom.sh
 fi
