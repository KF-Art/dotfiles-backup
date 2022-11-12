#!/bin/bash
mount UUID="c30c8f52-734b-44fc-8eae-f52ab09cdb28" /chr/void
for i in proc sys dev; do mount --rbind /$i /chr/void/$i ; done
cp /etc/resolv.conf /chr/void/etc/
chroot /chr/void
