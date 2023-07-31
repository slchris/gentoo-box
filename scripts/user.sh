#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
USE="-sendmail" emerge app-admin/sudo
useradd -m vagrant
mkdir -p /etc/sudoers.d
echo 'user ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/user
mkdir -p ~user/.ssh
chmod 0700 ~user/.ssh
touch ~user/.ssh/authorized_keys
chmod 0600 ~user/.ssh/authorized_keys
chown -R user: ~user/.ssh
systemctl enable sshd
echo user:$(openssl passwd -1 -salt vagrant Rbp9qDckV4QGNytEmF) > /tmp/user.txt
chpasswd -e < /tmp/user.txt
rm -f /tmp/user.txt
EOF
