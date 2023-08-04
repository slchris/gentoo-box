#!/bin/bash

if [[ -z $SCRIPTS ]]
then
  SCRIPTS=.
fi

chmod +x $SCRIPTS/scripts/*.sh

for script in \
  stage3      \
  mounts      \
  resolv.conf \
  portage     \
  timezone    \
  fstab       \
  kernel      \
  grub        \
  network     \
  user        \
  systemd     \
  cleanup     \
  make_stage4
do
  "$SCRIPTS/scripts/$script.sh"  desktop-systemd-mergedusr
done

echo "All done."
