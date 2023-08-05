#!/bin/bash

# systemd 


chroot /mnt/gentoo /bin/bash <<'EOF'
ln -sf /proc/self/mounts /etc/mtab
systemctl daemon-reexec
systemctl preset-all
systemd-machine-id-setup
EOF
