#!/bin/bash
mount UUID="2e8887c8-9327-486b-9e08-1f232ed821c9" /chr/devuan
for i in proc sys dev; do mount --rbind /$i /chr/devuan/$i ; done
cp /etc/resolv.conf /chr/devuan/etc/
chroot /chr/devuan
