# Allows to change Qt theme
#export QT_QPA_PLATFORMTHEME=kde

#unset QT_QPA_PLATFORMTHEME
#case $XDG_CURRENT_DESKTOP in
#	KDE)
#		export QT_QPA_PLATFORMTHEME="kde" ;;
#	LXQt)
#		export QT_QPA_PLATFORMTHEME="lxqt" ;;
#	*)
#		export QT_QPA_PLATFORMTHEME="qt5ct" ;;
#esac

export QT_QPA_PLATFORMTHEME=qt5ct
# The bar that you will use
export BAR_APPLICATION="tint2"
#export BAR_APPLICATION="budgie-panel"
#export BAR_APPLICATION="plasmashell"

# Set both lock and suspend idle time
export LOCK_TIME="300"
export SUSPEND_TIME="300"

# Change Plasma WM
export KDEWM=/usr/bin/kwin_x11

export GDK_SCALE=1.16
export EDITOR=micro

export XBPS_ARCH=$(xbps-uhelper arch)
export REPO_CEREUS="https://sourceforge.net/projects/cereus-linux/files/repos/"
export REPO_CORE="${REPO_CEREUS}/cereus-core"
export REPO_EXTRA="${REPO_CEREUS}/cereus-extra"
export REPO_VOID="https://repo-fastly.voidlinux.org/current/"
export PATH=$PATH:~/scripts:~/cereus/scripts/:~/.local/bin
export MOZ_GTK_TITLEBAR_DECORATION=client
export MANGOHUD=1
#export KDEWM="/home/kevin/scripts/plasma-icewm"
export WINEFSYNC=1
export DXVK_ASYNC=1
export mesa_glthread=true
export SHOW_DESKTOP=1
export NO_AT_BRIDGE=1 
export GDK_DPI_SCALE=1.05
export "MICRO_TRUECOLOR=1"
