#!/bin/bash
partuuid="138c0bef-a473-4a0f-bbee-01c836d1cecf"
umount UUID=${partuuid}
mount UUID=${partuuid} /chr/artix
for i in proc sys dev; do mount --rbind /$i /chr/artix/$i ; done
cp /etc/resolv.conf /chr/artix/etc/
chroot /chr/artix
