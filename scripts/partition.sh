#!/bin/bash

sgdisk \
  -n 1:0:0     -t 1:8300 -c 1:"linux-root" \
  -p /tmp/gentoo_build.img

sync

mkfs.ext4 /dev/sda4
mount /dev/sda4 /mnt/gentoo
