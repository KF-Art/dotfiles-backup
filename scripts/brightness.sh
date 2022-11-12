#!/bin/bash
#
#  i3-volume
#
#  Volume control and volume notifications for i3wm.
#
#  Requires:
#    alsa-utils or pulseaudio-utils
#    awk (POSIX compatible)
#
#  Optional:
#    A libnotify compatible notification daemon such as notify-osd or dunst
#    notify-send (libnotify) or dunstify (dunst)
#
#  Copyright (c) 2016 Beau Hastings. All rights reserved.
#  License: GNU General Public License v2
#
#  Author: Beau Hastings <beausy@gmail.com>
#  URL: https://github.com/hastinbe/i3-volume

# Get the backlight as a percentage.
get_backlight() {
    xbacklight -get | cut -d. -f1
}


# Increase volume relative to current volume.
#
# Arguments:
#   Step        (integer) Percentage to increase by.
raise_backlight() {
    xbacklight -inc $step
}


# Decrease volume relative to current volume.
#
# Arguments:
#   Step        (integer) Percentage to decrease by.
lower_backlight() {
    xbacklight -dec $step
}


# Set volume.
#
# Arguments:
#   Step        (integer) Percentage to decrease by.
set_backlight() {
    xbacklight -set $1
}


# Gets an icon for the provided volume.
#
# Arguments:
#   Volume      (integer) An integer indicating the volume.
#
# Returns:
#   The volume icon name.
get_backlight_icon() {
    local vol="$1"
    local icon

    if $opt_use_legacy_icons; then
        if [ "$vol" -ge 70 ]; then icon="audio-volume-high"
        elif [ "$vol" -ge 40 ]; then icon="audio-volume-medium"
        elif [ "$vol" -gt 0 ]; then icon="audio-volume-low"
        else icon="audio-volume-low"
        fi
    else
        if [ "$vol" -gt 100 ]; then icon="audio-volume-overamplified-symbolic.symbolic"
        elif [ "$vol" -ge 70 ]; then icon="audio-volume-high-symbolic.symbolic"
        elif [ "$vol" -ge 40 ]; then icon="audio-volume-medium-symbolic.symbolic"
        elif [ "$vol" -gt 0 ]; then icon="audio-volume-low-symbolic.symbolic"
        else icon="audio-volume-low-symbolic.symbolic"
        fi
    fi

    echo "${icon}"
}

# Display a notification indicating the current volume.
notify_backlight() {
    local vol=$(get_backlight)
    local icon=$(get_volume_icon "$vol")
    local text="Brightness ${vol}%"

    if $opt_show_volume_progress; then
        local progress=$(get_progress_bar "$vol")
        text="$text $progress"
    fi

    if $opt_use_dunstify; then
        dunstify -i "$icon" -t $expires -h int:value:"$vol" -h string:synchronous:brightness "$text" -r 1000
    else
        notify-send -i "$icon" -t $expires -h int:value:"$vol" -h string:synchronous:brightness "$text"
    fi
}

# Updates the status line.
#
# Arguments:
#   signal  (string) The signal used to update the status line.
#   proc    (string) The name of the status line process.
update_statusline() {
    local signal="$1"
    local proc="$2"
    pkill "-$signal" "$proc"
}

# Generates a progress bar for the provided value.
#
# Arguments:
#   Percentage      (integer) Percentage of progress.
#   Maximum         (integer) Maximum percentage. (default: 100)
#   Divisor         (integer) For calculating the ratio of blocks to progress (default: 5)
#
# Returns:
#   The progress bar.
get_progress_bar() {
    local percent="$1"
    local max_percent=${2:-100}
    local divisor=${3:-5}
    local progress=$((($percent > $max_percent ? $max_percent : $percent) / $divisor))

    printf '█%.0s' $(eval echo "{1..$progress}")
}

# Display program usage.
usage() {
    echo "Usage: $0 [options]
Control volume and related notifications.
Options:
  -a                use alsa-utils instead of pulseaudio-utils for volume control
  -c <card>         card number to control (amixer only)
  -d <amount>       decrease volume
  -e <expires>      expiration time of notifications, in milliseconds
  -i <amount>       increase volume
  -l                use legacy icons
  -m                toggle mute
  -n                show notifications
  -p                show text volume progress bar
  -s <sink_name>    symbolic name of sink (pulseaudio only)
  -t <process_name> name of status line process. must be used with -u
  -u <signal>       update status line using signal. must be used with -t
  -v <value>        set volume
  -y                use dunstify instead of notify-send
  -h                display this help and exit
" 1>&2
    exit 1
}
###########################################################

opt_decrease_backlight=false
opt_increase_backlight=false
opt_notification=false
opt_set_backlight=false
opt_show_volume_progress=false
opt_use_amixer=false
opt_use_dunstify=false
opt_use_legacy_icons=false
card=""
signal=""
sink=""
statusline=""
step=5
backlight_set="100"
expires="1500"

while getopts ":ac:d:e:hi:lmnps:t:u:v:y" o; do
    case "$o" in
        d)
            opt_decrease_backlight=true
            step="${OPTARG}"
            ;;
        e)
            expires="${OPTARG}"
            ;;
        i)
            opt_increase_backlight=true
            step="${OPTARG}"
            ;;
        l)
            opt_use_legacy_icons=true
            ;;
        n)
            opt_notification=true
            ;;
        p)
            opt_show_volume_progress=true
            ;;
        t)
            statusline="${OPTARG}"
            ;;
        u)
            signal="${OPTARG}"
            ;;
        v)
            opt_set_backlight=true
            backlight_set="${OPTARG}"
            ;;
        y)
            opt_use_dunstify=true
            ;;
        h | *)
            usage
            ;;
    esac
done
shift $((OPTIND-1)) # Shift off options and optional --

if ${opt_increase_backlight}; then
    raise_backlight $step
fi

if ${opt_decrease_backlight}; then
    lower_backlight $step
fi

if ${opt_set_backlight}; then
    set_backlight $backlight_set
fi

# The options below this line must be last
if ${opt_notification}; then
    notify_backlight
fi

if [ -n "${signal}" ]; then
    if [ -z "${statusline}" ]; then
        usage
    fi
    update_statusline "${signal}" "${statusline}"
else
    if [ -n "${statusline}" ]; then
        usage
    fi
fi
