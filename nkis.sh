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
v1 = "VirtualBox"
v2 = "VMware Virtual Platform"
ver = `dmidecode -s system-product-name`
if [ "$ver" == "$v1"]
apt-get update && apt-get install -y linux-headers-$(uname -r)
read -p "Choose the install VirtualBox/Vmware tools  from the menu then press enter"
cp /media/cdrom/VBoxLinuxAdditions.run /root/
chmod 755 /root/VBoxLinuxAdditions.run
cd /root
./VBoxLinuxAdditions.run
cd
echo "installing gedit"
apt-get install gedit
echo "Configuring postgresql database to autostart on boot"
update-rc.d postgresql enable
echo installing additional tools"
echo "*************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "installing masscan"
echo "This is the fastest Internet port scanner. It can scan the entire Internet in under six minutes"
echo "Source is @https://github.com/robertdavidgraham/masscan
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make
make install
echo "Do not forget to change the hostname using "gedit /etc/hostname""

