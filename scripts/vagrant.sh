#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
USE="-sendmail" emerge app-admin/sudo
useradd -m vagrant
mkdir -p /etc/sudoers.d
echo 'vagrant ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/vagrant
mkdir -p ~vagrant/.ssh
chmod 0700 ~vagrant/.ssh
touch ~vagrant/.ssh/authorized_keys
chmod 0600 ~vagrant/.ssh/authorized_keys
chown -R vagrant: ~vagrant/.ssh
rc-update add sshd default
echo vagrant:$(openssl passwd -1 -salt vagrant Rbp9qDckV4QGNytEmF) > /tmp/vagrant.txt
chpasswd -e < /tmp/vagrant.txt
rm -f /tmp/vagrant.txt
EOF
