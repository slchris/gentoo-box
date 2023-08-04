#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
emerge sys-boot/grub
EOF
