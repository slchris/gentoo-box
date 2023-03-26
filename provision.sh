#!/bin/bash

if [[ -z $SCRIPTS ]]
then
  SCRIPTS=.
fi

chmod +x $SCRIPTS/scripts/*.sh

for script in \
  partition   \
  stage3      \
  mounts      \
  resolv.conf \
  portage     \
  timezone    \
  fstab       \
  kernel      \
  grub        \
  network     \
  vagrant     \
  virtualbox  \
  cleanup
do
  "$SCRIPTS/scripts/$script.sh" stage3-amd64-openrc
done

echo "All done."
