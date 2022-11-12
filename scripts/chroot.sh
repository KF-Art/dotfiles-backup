#!/bin/bash
for i in proc sys dev; do mount --rbind /$i /mnt/$i ; done
cp /etc/resolv.conf /mnt/etc/
