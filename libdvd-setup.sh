#!/bin/bash
LOCKFILE=/home/vagrant/.libdvd-setup.sh.done
if [ -f $LOCKFILE ]; then
  echo "\nlibdvd already installed and configured"
  sleep 3
else
  sudo apt install -y libdvd-pkg
  sudo dpkg-reconfigure libdvd-pkg
  touch $LOCKFILE
  echo "\nlibdvd installed and configured. press [enter] to continue."
  read
fi
exit 0
