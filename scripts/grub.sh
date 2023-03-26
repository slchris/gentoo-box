#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge sys-boot/grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
EOF
