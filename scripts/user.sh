#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
USE="-sendmail" emerge app-admin/sudo
useradd -m user
mkdir -p /etc/sudoers.d
echo 'user ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/user
echo user:$(openssl passwd -1 -salt user Rbp9qDckV4QGNytEmF) > /tmp/user.txt
chpasswd -e < /tmp/user.txt
rm -f /tmp/user.txt
EOF

