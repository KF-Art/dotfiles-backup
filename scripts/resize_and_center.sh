#!/bin/bash
# Get screen dimensions
screen_width=$(xdpyinfo | awk '/dimensions:/ {print $2}' | cut -d'x' -f1)
screen_height=$(xdpyinfo | awk '/dimensions:/ {print $2}' | cut -d'x' -f2)

# Calculate new dimensions
new_width=$((screen_width / 2))
new_height=$((screen_height / 2))

# Get the active window ID
active_window_id=$(xdotool getactivewindow)

# Resize the active window
xdotool windowsize $active_window_id $new_width $new_height

# Move the active window to the center
wmctrl -r :ACTIVE: -e 0,$((screen_width / 4)),$((screen_height / 4)),$new_width,$new_height
