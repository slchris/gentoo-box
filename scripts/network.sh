#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
sed -i 's/^#\s*GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="net.ifnames=0" init=/lib/systemd/systemd/' \
  /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
emerge networkmanager
systemctl enable NetworkManager
EOF
