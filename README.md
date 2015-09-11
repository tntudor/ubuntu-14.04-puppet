# ubuntu-14.04-puppet

## Overview
Create a virtual machine (VBox) with Ubuntu and Puppet. 
I used a base box built from bento repository with ubuntu 14.04.03 LTS.  
Add puppet 3.8.2 and start puppet agent.

## Usage
Clone repository, cd to it and run:  

		vagrant up              # create vm
		vagrant ssh		# log into vm

After login into vm run:

		sh /vagrant/update.sh
		sudo sh /vagrant/cleanup.sh
		exit

To build the box run:

		sh build.sh


## Changelog

* v.0.2.0  
	- add rm on build.sh scripts  
	- update the base image (the packages installed are listed into pkg-installed.txt)
	
* v.0.2.0  
	- add update.sh, cleanup.sh, build.sh scripts  
	- update the base image (the packages installed are listed into pkg-installed.txt)

* v.0.1.0  
	- initial version  
	

