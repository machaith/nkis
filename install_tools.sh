#!/usr/bin/env bash

cd
echo -e "\e[31minstalling gedit"
apt-get install geditins
echo -e "\e[32mConfiguring postgresql database to autostart on boot"
update-rc.d postgresql enable
echo -e "\e[32minstalling additional tools"
echo "*************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "*************************************************************"
echo -e "\e[31mInstalling masscan"
echo -e "\e[32mThis is the fastest Internet port scanner. It can scan the entire Internet in under six minutes"
echo -e "\e[32mSource is @https://github.com/robertdavidgraham/masscan
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make
make install
echo -e "\e[32mDo not forget to change the hostname using "gedit /etc/hostname""
echo "*************************************************************"
echo -e "\e[32mInstalling The Backdoor Factory"
echo -e "\e[32mPatch PE, ELF, Mach-O binaries with shellcode."
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
/opt/the-backdoor-factory/install.sh
echo -e "\e[32mPatch PE, ELF, Mach-O binaries with shellcode."
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
/opt/the-backdoor-factory/install.sh
echo "*************************************************************"
echo -e "\e[31mInstalling HTTPScreenShot"
echo -e "\e[32mHTTPScreenshot is a tool for grabbing screenshots and HTML of large numbers of websites."
pip install selenium
git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot
echo -e "\e[34mIs this a 64 bit machine? (y/n)"
read 64or32answer
if [[ $64or32answer == "n" ]];then
cd /root/Downloads/
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-i686.tar.bz2
bzip2 -d phantomjs-1.9.8-linux-i686.tar.bz2
tar xvf phantomjs-1.9.8-linux-i686.tar
cp phantomjs-1.9.8-linux-i686/bin/phantomjs /usr/bin/
else echo -e "\e[34mgood"
fi
chmod +x install-dependencies.sh && ./install-dependencies.sh
echo "*************************************************************"
echo -e "\e[31mInstalling SMBExec"
echo -e "\e[32mA rapid psexec style attack with samba tools."
cd
git clone https://github.com/pentestgeek/smbexec.git /opt/smbexec
cd /opt/smbexec && ./install.sh
echo "Select 1 - Debian/Ubuntu and derivatives"
echo "Select all defaults"
./install.sh
echo "Select 4 to compile smbexec binaries"
echo "After compilation, select 5 to exit"
