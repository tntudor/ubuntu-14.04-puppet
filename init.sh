#!/bin/sh

echo "Puppet agent stating/stoping..."
sudo sed -i 's/START=no/START=yes/' /etc/default/puppet

echo "Install puppet lvm module..."
sudo puppet module install puppetlabs-lvm 
