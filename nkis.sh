#!/usr/bin/env bash

clear
echo "*************************************************************"
echo "Created by machaith"
echo "https://github.com/machaith"
echo "thanks to Peter Kim (Cheetz) https://github.com/cheetz/"
echo "as I used his setup instructions and his great book The Hacker play Book 2"
echo "as the main guide"
echo "updating your machine"
echo "*************************************************************"
#apt-get update && apt-get upgrade
echo "Updates were installed, do not forget to run "apt-get dist-upgrade" and reboot"
echo ""
echo ""
echo ""
echo "Checking if installed as a virtual and if Vmware_tools or VirtualBox-additions is needed"
v1="VirtualBox";
v2="VMware Virtual Platform";
ver=`dmidecode -s system-product-name`;
echo "$ver detected, do you want to install Vmware_tools or VirtualBox-additions? (y/n)"
read answer
if [[ $answer == "n" ]]; then
./install_tools.sh
else
echo "Installing"
fi
if [ "$ver" == "$v1" ];then
./install_VirtualBox.sh
elif [ "$ver" == "$v2" ];then
./install_VMware_tools.sh
else
echo "No virtualization detected"
fi
