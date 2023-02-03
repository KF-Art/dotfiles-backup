# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#Custom Bash prompt
#triangle=$'\uE0B0'
#triangle_left=

#PS1=' \[\e[0;38;5;23m\]$triangle_left\[\e[0;48;5;23m\] \[\e[0;48;5;23m\]\u\[\e[0;48;5;23m\]@\[\e[0;48;5;23m\]\h\[\e[0;48;5;23m\] \[\e[0;38;5;23;48;5;29m\]$triangle\[\e[0;48;5;29m\] \[\e[0;48;5;29m\]\w\[\e[0;48;5;29m\] \[\e[0;38;5;29;48;5;35m\]$triangle\[\e[0;48;5;35m\] \[\e[0;48;5;35m\]\@\[\e[0;48;5;35m\] \[\e[0;38;5;35;48;5;42m\]$triangle\[\e[0;48;5;42m\] \[\e[0;38;5;235;48;5;42m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) $\[\e[0;48;5;42m\] \[\e[0;38;5;42m\]$triangle\[\e[0m\] '

[[ $- == *i* ]] && . /usr/share/blesh/ble.sh

### ALIASES ###
# XBPS
alias xqs="xbps-query -s"               # Busca localmente.
alias xqrs="xbps-query -Rs"             # Busca en los repositorios.
alias xisu="doas xbps-install -Su"      # Actualiza el sistema.
alias xrr="doas xbps-remove -R"         # Elimina un paquete y sus dependencias.
alias xrro="doas xbps-remove -RoO"      # Elimina un paquete y limpia la caché.
alias xra="xbps-rindex -a *.xbps"       # Indexa los paquetes en el directorio actual.
alias xsrc="~/void-packages/xbps-src"   # xbps-src

alias ls="ls --color=auto"
alias su='su -c "/bin/bash"'
alias xi="doas xbps-install"

alias lszfs="dfc -dt zfs"
alias fecha="date +%Y.%m.%d"

PATH=$PATH:~/scripts:~/cereus/scripts/

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
     exec startx
fi

# . ~/DATOS/install/polyglot/polyglot.sh
#. /usr/share/polyglot-prompt/polyglot.sh

if [ $TERM == rxvt-unicode-256color ]
	then imgparam="w3m"
elif [ $TERM == xterm-kitty ]
	then imgparam="kitty"
fi

alias kittyfetch="neofetch --$imgparam ~/Desktop/surtr/face.png"
alias surtrfetch="neofetch --$imgparam ~/Desktop/surtr/face-full.png"
alias surtrfetch2="neofetch --$imgparam /home/kevin/Desktop/surtr/Surtr\ elegant\ dress-3.png"
alias surtrfetch3="neofetch --$imgparam /home/kevin/Desktop/surtr/Surtr\ elegant\ dress-4.png"

(cat ~/.cache/wal/sequences &)
# source ~/.cache/wal/colors-tty.sh

function getwall {
	if [ $XDG_CURRENT_DESKTOP = KDE ]; then
        	wall="$(cat  ~/.config/plasma-org.kde.plasma.desktop-appletsrc | grep Image= | cut -d"=" -f2 | cut -d ":" -f2)"
	else
        	wall="$(cat ~/.fehbg | grep feh | cut -d"'" -f2)"
	fi

	echo ${wall}
}

complete -cf doas

export GPG_TTY=$(tty)

#eval $(oh-my-posh init bash)
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/lib/python3.11/site-packages/powerline/bindings/shell/powerline.sh
