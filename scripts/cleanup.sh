#!/bin/bash



rm -rf /mnt/gentoo/var/db/repos/gentoo
rm -rf /mnt/gentoo/tmp/*
rm -rf /mnt/gentoo/var/log/*
rm -rf /mnt/gentoo/var/tmp/*
rm -rf /mnt/gentoo/stage3-*.tar.xz
rm -rf /var/cache/distfiles/*

umount -R /mnt/gentoo
swapoff /dev/sda3
#chroot /mnt/gentoo /bin/bash <<'EOF'
#wget http://intgat.tigress.co.uk/rmy/uml/zerofree-1.0.3.tgz
#tar xvzf zerofree-*.tgz
#cd zerofree*/
#make
#EOF
#
#mv /mnt/gentoo/zerofree* ./
#cd zerofree*/
#
#mount -o remount,ro /mnt/gentoo
#./zerofree /dev/sda4
#
#swapoff /dev/sda3
#dd if=/dev/zero of=/dev/sda3
#mkswap /dev/sda3
#


