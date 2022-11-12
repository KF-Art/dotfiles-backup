#!/bin/sh

#Kill KDE desktop wallpaper
~/scripts/killkde-desktop.sh &

#Kill KDE splash animation once plasmashell its fully loaded	
~/scripts/kill-kdesplash.sh &

# Wallpaper
# nitrogen --restore &

#Kill nemo-desktop if i3 is running
~/scripts/kill-nemo.sh &

#Enable Meta key for application menu
# ksuperkey &

#Tray applications
# ~/scripts/trayapps.sh &

# XFCE notification server
~/scripts/xfce4-notifyd &

# MEGAsync
# sleep 10 && glibc megasync

#Autolock inhibitor
xidlehook --not-when-audio --not-when-fullscreen --timer 300 "betterlockscreen -l" "" --timer 900 "loginctl suspend" "" &
