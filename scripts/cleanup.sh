#!/bin/bash


umount -R /mnt/gentoo/proc
umount -R /mnt/gentoo/sys
umount -R /mnt/gentoo/dev
umount -R /mnt/gentoo/run
umount -R /mnt/gentoo/proc
rm -rf /mnt/gentoo/var/db/repos/gentoo
rm -rf /mnt/gentoo/tmp/*
rm -rf /mnt/gentoo/var/log/*
rm -rf /mnt/gentoo/var/tmp/*
rm -rf /mnt/gentoo/stage3-*.tar.xz
rm -rf /mnt/gentoo/var/cache/distfiles/*
