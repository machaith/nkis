#!/bin/bash

echo "*************************************************************"
echo "Created by machaith"
echo "https://github.com/machaith"
echo "thanks to Peter Kim (Cheetz) https://github.com/cheetz/"
echo "as I used his setup instructions and his great book The Hacker play Book 2"
echo "as the main guide"
echo "updating your machine"
echo "*************************************************************"
apt-get update && apt-get upgrade
echo "Updates were installed, do not forget to run "apt-get dist-upgrade" and reboot"
echo ""
echo ""
echo ""
echo "Checking if installed as a virtual and if Vmware_tools or VirtualBox-additions is needed"
v1="VirtualBox";
v2="VMware Virtual Platform";
ver=`dmidecode -s system-product-name`;
echo "$ver"
if [ "$ver" == "$v1" ];then
apt-get update && apt-get install -y linux-headers-$(uname -r)
read -p "Choose the install VirtualBox/Vmware tools  from the menu then press enter"
cp /media/cdrom/VBoxLinuxAdditions.run /root/
chmod 755 /root/VBoxLinuxAdditions.run
cd /root
./VBoxLinuxAdditions.run
elif [ "$ver" == "$v2" ];then
echo "vmware"
else
                                                                                                                                    1,1           Top
