#!/usr/bin/env bash

cd
apt-get install git gcc make linux-headers-$(uname -r)
mkdir /root/vmware-tools
cp -r /media/cdrom/* /root/vmware-tools/
cd /root/vmware-tools/
tar -xzf *tar.gz
cd vmware-tools-distrib
./vmware-install.pl
clear
echo "VMware tools installed"
read -p "press Enter to start installing the tools"
echo "reboot and run install_tools.sh"
