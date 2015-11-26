#!/bin/bash

echo "*************************************************************"
echo "Created by machaith"
echo "https://github.com/machaith"
echo "updating your machine"
echo "*************************************************************"
apt-get update && apt-get upgrade
echo "Updates were installed, do not forget to run "apt-get dist-upgrade" and reboot"
echo ""
echo ""
echo ""
apt-get install gedit
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make
make install
