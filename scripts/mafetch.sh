#!/bin/bash
clear
c=3 b=4
for j in c b; do
	for i in {0..7}; do
		printf -v $j$i "%b" "\e[${!j}${i}m"
	done
done
bld=$'\e[1m'
rst=$'\e[0m'
inv=$'\e[7m'

user=$(whoami)
host=$(hostname)
memory=$(free -h)
os=$(source /etc/os-release && echo $PRETTY_NAME)
kernel=$(uname -sr)
wm="$(xprop -id $(xprop -root -notype | awk '$1=="_NET_SUPPORTING_WM_CHECK:"{print $5}') -notype -f _NET_WM_NAME 8t | grep "WM_NAME" | cut -f2 -d \")" 
mem=$(free -m | sed -n 's/^Mem:\s\+[0-9]\+\s\+\([0-9]\+\)\s.\+/\1/p')
uptime="$(uptime -p | sed 's/up //')"
pkgs=
	set --
	# kiss, arch, debian, void, gentoo
	for i in '/var/db/kiss/installed/*'  '/var/lib/pacman/local/[0-9a-z]*' \
	'/var/lib/dpkg/info/*.list'  '/var/db/xbps/.*'  '/var/db/pkg/*/*'; do
		set -- $i
		[ $# -gt 1 ] && pkgs=$# && break
	done
shell=$(echo "$SHELL" | awk -F/ '{for ( i=1; i <= NF; i++) sub(".", substr(toupper($i),1,1) , $i); print $NF}')
init() {
	init=$(readlink /sbin/init)
	init=${init##*/}
	init=${init%%-*}
	export init
}
init
 
cat <<EOF

${c4} ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
${c4} ▎▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▎${c3}${c4} ${c2} ${c4}${c1}  ${c4}  ▎ ${c5}${c2} ${bld}${c5}$user${rst}@${bld}${c2}$host${rst}
${c4} ▎                            ▎ ${c5}
${c4} ▎   ${c5}█▀▀▀▀▀▀▀▀█${c4}               ▎ ${bld}${c5}OS     ${c3}:${rst} $os
${c4} ▎   ${c5}█        █${c4}               ▎ ${bld}${c5}Kernel ${c3}:${rst} $kernel
${c4} ▎   ${c5}█  █  █  █${c4}               ▎ ${bld}${c5}WM     ${c3}:${rst} $wm
${c4} ▎   ${c5}█        █${c4}               ▎ ${bld}${c5}Shell  ${c3}:${rst} $shell
${c4} ▎   ${c5}▀█▄▄▄▄▄▄█▀${c4}               ▎ ${bld}${c5}Init   ${c3}:${rst} $init
${c4} ▎                            ▎ ${c2}
${c4} ▎                            ▎ ${bld}${c5}pkgs   ${c3}:${rst} $pkgs
${c4} ▎   ${c6}aesthetic  ^_^        ${c4} ▎ ${bld}${c5}memory ${c3}: ${rst}$mem $(echo / 3776MiB)
${c4} ▎▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▎ ${bld}${c5}uptime ${c3}:${rst} $uptime


EOF

if  [[ $1 = "-b" ]]; then
	for f in {0..6}; do
		echo -en "\033[$((f+41))m\033[$((f+30))m██▓▒░"
	done
	echo -en "\033[37m██\n"
	echo
	for f in {0..6}; do
		echo -en "\033[$((f+41))m\033[1;$((f+30))m██▓▒░"
	done
	echo -en "\033[1;37m██"
	echo -e "\033[0m"
	echo
else
	:
fi
