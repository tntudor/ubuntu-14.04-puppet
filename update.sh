#!/bin/sh

echo "Update the image..."
sudo apt-get -y update
sudo apt-get -y dist-upgrade

#echo "Restarting..."
#sudo shutdown -r now
