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
echo "preparing the github folder to download more tools"
cd ~
mkdir github
cd github/
apt-get install gedit
