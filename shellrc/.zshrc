HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

export PATH=$PATH:~/scripts:~/cereus/scripts/

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

#if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
#     exec startx
#fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	clear
	startx
fi

# . ~/DATOS/install/polyglot/polyglot.sh
#. /usr/share/polyglot-prompt/polyglot.sh
. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
. /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

if [ $TERM = rxvt-unicode-256color ]
	then imgparam="w3m"
elif [ $TERM = xterm-kitty ]
	then imgparam="kitty"
fi

alias kittyfetch="neofetch --$imgparam ~/Desktop/surtr/face.png"
alias surtrfetch="neofetch --$imgparam ~/Desktop/surtr/face-full.png"
alias surtrfetch2="neofetch --$imgparam /home/kevin/Desktop/surtr/Surtr\ elegant\ dress-3.png"
alias surtrfetch3="neofetch --$imgparam /home/kevin/Desktop/surtr/Surtr\ elegant\ dress-4.png"

(cat ~/.cache/wal/sequences &)
# source ~/.cache/wal/colors-tty.sh

function getwall {
	if [ "$XDG_CURRENT_DESKTOP" = "KDE" ]; then
        	wall="$(cat  ~/.config/plasma-org.kde.plasma.desktop-appletsrc | grep Image= | cut -d"=" -f2 | cut -d ":" -f2)"
	else
        	wall="$(cat ~/.fehbg | grep feh | cut -d"'" -f2)"
	fi

	echo ${wall}
}

export GPG_TTY=$(tty)

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
autoload -U compinit promptinit
promptinit
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
fpath=(/usr/local/share/zsh-completions $fpath)

bindkey '^?'      backward-delete-char          # bs         delete one char backward
bindkey '^[[3~'   delete-char                   # delete     delete one char forward
bindkey '^[[H'    beginning-of-line             # home       go to the beginning of line
bindkey '^[[F'    end-of-line                   # end        go to the end of line
bindkey '^[[1;5C' forward-word                  # ctrl+right go forward one word
bindkey '^[[1;5D' backward-word                 # ctrl+left  go backward one word
bindkey '^H'      backward-kill-word            # ctrl+bs    delete previous word
bindkey '^[[3;5~' kill-word                     # ctrl+del   delete next word
bindkey '^J'      backward-kill-line            # ctrl+j     delete everything before cursor
bindkey '^[[D'    backward-char                 # left       move cursor one char backward
bindkey '^[[C'    forward-char                  # right      move cursor one char forward
bindkey '^[[A'    up-line-or-beginning-search   # up         prev command in history
bindkey '^[[B'    down-line-or-beginning-search # down       next command in history

powerline-daemon -q
#. /home/kevin/.local/lib/python3.11/site-packages/powerline/bindings/zsh/powerline.zsh
. /usr/lib/python3.11/site-packages/powerline/bindings/zsh/powerline.zsh

mdl () {
url=$(curl -Lqs "$1"|grep "href.*download.*media.*"|tail -1|cut -d '"' -f 2)
aria2c -x 6 "$url" # or wget "$url" if you prefer.
}
