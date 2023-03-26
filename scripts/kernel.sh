#!/bin/bash


chroot /mnt/gentoo /bin/bash <<'EOF'
emerge sys-kernel/gentoo-kernel-bin
EOF
