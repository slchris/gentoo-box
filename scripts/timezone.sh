#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
emerge --config sys-libs/timezone-data
EOF
