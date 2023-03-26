#!/bin/bash

chroot /mnt/gentoo /bin/bash <<'EOF'
echo GENTOO_MIRRORS="https://mirrors.aliyun.com/gentoo"
 >> /etc/portage.conf
echo ACCEPT_LICENSE="*" >> /etc/portage.conf
mkdir -p /etc/portage/repos.conf
cp -v /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
sed -i '6c sync-type = webrsync' /etc/portage/repos.conf/gentoo.conf 
sed -i '7c sync-uri = rsync://rsync.mirrors.ustc.edu.cn/gentoo-portage/' /etc/portage/repos.conf/gentoo.conf
emerge --sync
EOF
