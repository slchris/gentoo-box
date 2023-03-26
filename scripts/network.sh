#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
sed -i 's/^#\s*GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="net.ifnames=0"/' \
  /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
emerge net-misc/dhcpcd
rc-update add dhcpcd default
EOF
