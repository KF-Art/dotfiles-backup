#!/bin/sh
for i in $(find /sys -type l); do
	cd "$(dirname "$i")"
	if [ ! -e "$(readlink "$(basename "$i")")" ]; then
		ls -g "$i" | awk '{print "$8" "$9" "$10"}'
	fi;
	cd - > /dev/null;
done
