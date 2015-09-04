#!/bin/sh

echo "Puppet agent stating..."
sudo sed -i 's/START=no/START=yes/' /etc/default/puppet
sudo service puppet start





