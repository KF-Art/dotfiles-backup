#!/bin/sh
while pgrep -u $UID -x plasmashell >/dev/null; do sleep 1; done
wmctrl -c ksplashqml
