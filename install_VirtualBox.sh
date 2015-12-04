#!/usr/bin/env bash

apt-get update && apt-get install -y linux-headers-$(uname -r)
read -p "Choose the install VirtualBox/Vmware tools  from the menu then press enter"
cp /media/cdrom/VBoxLinuxAdditions.run /root/
chmod 755 /root/VBoxLinuxAdditions.run
/root/VBoxLinuxAdditions.run
echo VBox guest Additions" installed"
echo "reboot and run install_tools.sh"

