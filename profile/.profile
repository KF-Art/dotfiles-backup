# Allows to change Qt theme
export QT_QPA_PLATFORMTHEME=kde
#if ! [ "$XDG_CURRENT_DESKTOP" = "LXQt" ] || [ "$XDG_CURRENT_DESKTOP" = "KDE" ]; then
#	export QT_QPA_PLATFORMTHEME="qt5ct"
#fi

# The bar that you will use
export BAR_APPLICATION="tint2"
#export BAR_APPLICATION="budgie-panel"
#export BAR_APPLICATION="plasmashell"

# Set both lock and suspend idle time
export LOCK_TIME="300"
export SUSPEND_TIME="300"

# Change Plasma WM
#export KDEWM=/usr/bin/kwin_x11

export GDK_SCALE=1.16
export EDITOR=micro

export XBPS_ARCH=$(xbps-uhelper arch)
export REPO_CEREUS="https://mirrors.dotsrc.org/osdn/storage/g/c/ce/cereuslinux/repos/"
export REPO_CORE="${REPO_CEREUS}/cereus-core"
export REPO_EXTRA="${REPO_CEREUS}/cereus-extra"
export REPO_VOID="https://mirror.clarkson.edu/voidlinux/current"
export PATH=$PATH:~/scripts:~/cereus/scripts/
export MOZ_GTK_TITLEBAR_DECORATION=client
