#!/bin/bash
mount UUID="96dccd3a-7d28-415e-afc0-11b7b8cf99eb" /chr/opensuse
for i in proc sys dev; do mount --rbind /$i /chr/opensuse/$i ; done
cp /etc/resolv.conf /chr/opensuse/etc/
chroot /chr/opensuse
