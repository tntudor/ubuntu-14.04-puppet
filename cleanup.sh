#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}
TODAY=`date`

echo "==> Cleaning up tmp"
rm -rf /tmp/*

# Cleanup apt cache
apt-get -y autoremove --purge
apt-get -y clean
apt-get -y autoclean

echo "==> Installed packages"
echo "Packages installed on ${TODAY}" > /vagrant/pkg-installed.txt
dpkg --get-selections | grep -v deinstall >> /vagrant/pkg-installed.txt

# Remove Bash history
unset HISTFILE
rm -f /root/.bash_history
rm -f /home/${SSH_USER}/.bash_history

# Clean up log files
find /var/log -type f | while read f; do echo -ne '' > $f; done;

echo "==> Clearing last login information"
>/var/log/lastlog
>/var/log/wtmp
>/var/log/btmp

echo "==> Cleanup finished."