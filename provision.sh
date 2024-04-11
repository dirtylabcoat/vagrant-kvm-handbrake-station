#!/bin/bash
apt-get update
apt-get upgrade
apt install -y handbrake handbrake-cli xterm vim
apt remove --autoremove -y update-notifier gnome-initial-setup
mkdir -p /home/vagrant/.config/autostart
cp /home/vagrant/libdvd-setup.sh.desktop /home/vagrant/.config/autostart/
chown -R vagrant:vagrant /home/vagrant
chmod +x /home/vagrant/libdvd-setup.sh
chmod 644 /home/vagrant/.config/autostart/libdvd-setup.sh.desktop
