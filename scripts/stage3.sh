#!/bin/bash



MIRRORS='https://mirrors.ustc.edu.cn/gentoo/releases/amd64/autobuilds/'


function stage3_url() {

	ZIPFILENAME=`curl -L $MIRRORS/latest-stage3.txt | grep $1 | grep ^[0-9] |awk -F '[/ ]'  '{if (NR==1) {print $2}}'`
	FILENAME=`curl -L $MIRRORS/latest-stage3.txt  2>/dev/null |grep ^[0-9]|awk '{if (NR==1) {print $1}}'`
	FILEURL="$MIRRORS/$FILENAME"
	wget -T 3 -c -O /mnt/gentoo/$ZIPFILENAME $FILEURL

}

stage3_url $1

cd /mnt/gentoo
tar xpf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner
