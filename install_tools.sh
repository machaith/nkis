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
apt-get update && apt-get dist-upgrade
echo "*************************************************************"
echo "The tools that will be installed"
echo "*************************************************************"
echo -e "\e[31mgedit"
echo -e "\e[31mmasscan"
echo -e "\e[31mThe Backdoor Factory"
echo -e "\e[31mHTTPScreenShot"
echo -e "\e[31mSMBExec"
echo -e "\e[31mGitrob"
echo -e "\e[31mCMSmap"
echo -e "\e[31mWPScan"
echo -e "\e[31mEyewitness"
echo -e "\e[31mPrinter Exploits"
echo -e "\e[31mSQLMap"
echo -e "\e[31mRecon-ng"
echo -e "\e[31mDiscover Scripts"
echo -e "\e[31mBeEF Exploitation Framework"
echo -e "\e[31mResponder"
echo -e "\e[31mThe Hacker Playbook 2 - Custom Scripts"
echo -e "\e[31mPowerSploit"
echo -e "\e[31mPowerTools"
echo -e "\e[31mnishang"
echo -e "\e[31mDSHashes"
echo -e "\e[31mSPARTA"
echo -e "\e[31mNoSQLMap"
echo -e "\e[31mSpiderfoot"
echo -e "\e[31mWCE"
echo -e "\e[31mMimikatz"
echo -e "\e[31mSET"
echo -e "\e[31mVeil-Framework"
echo -e "\e[31mFuzzing Lists \(SecLists\)"
echo -e "\e[31mNet-Creds Network Parsing "
echo -e "\e[31mWifite"
echo -e "\e[31mWIFIPhisher"
echo -e "\e[31mPhishing"
echo "*************************************************************"
echo -e "\e[0m"
read -p "Press Enter to start installing the tools"
cd
echo -e "\e[31minstalling gedit"
echo -e "\e[0m"
apt-get install gedit
echo -e "\e[32mConfiguring postgresql database to autostart on boot"
echo -e "\e[0m"
update-rc.d postgresql enable
echo -e "\e[32minstalling additional tools"
echo -e "\e[0m"
echo "*************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "*************************************************************"
echo -e "\e[31mInstalling masscan"
echo -e "\e[32mThis is the fastest Internet port scanner. It can scan the entire Internet in under six minutes"
echo -e "\e[32mSource is @https://github.com/robertdavidgraham/masscan"
echo -e "\e[0m"
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make
make install
echo -e "\e[32mDo not forget to change the hostname using "gedit /etc/hostname""
echo -e "\e[0m"
echo "*************************************************************"
echo -e "\e[32mInstalling The Backdoor Factory"
echo -e "\e[32mPatch PE, ELF, Mach-O binaries with shellcode."
echo -e "\e[0m"
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
/opt/the-backdoor-factory/install.sh
echo -e "\e[32mPatch PE, ELF, Mach-O binaries with shellcode."
echo -e "\e[0m"
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
/opt/the-backdoor-factory/install.sh
echo "*************************************************************"
echo -e "\e[31mInstalling HTTPScreenShot"
echo -e "\e[32mHTTPScreenshot is a tool for grabbing screenshots and HTML of large numbers of websites."
echo -e "\e[0m"
pip install selenium
git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot
echo -e "\e[34mIs this a 64 bit machine? \(y/n\)"
read 64or32answer
if [[ $64or32answer == "n" ]];then
cd /root/Downloads/
echo -e "\e[0m"
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-i686.tar.bz2
bzip2 -d phantomjs-1.9.8-linux-i686.tar.bz2
tar xvf phantomjs-1.9.8-linux-i686.tar
cp phantomjs-1.9.8-linux-i686/bin/phantomjs /usr/bin/
else echo -e "\e[34mgood"
echo -e "\e[0m"
fi
chmod +x install-dependencies.sh && ./install-dependencies.sh
echo "*************************************************************"
echo -e "\e[31mInstalling SMBExec"
echo -e "\e[32mA rapid psexec style attack with samba tools."
echo -e "\e[0m"
cd
git clone https://github.com/pentestgeek/smbexec.git /opt/smbexec
cd /opt/smbexec
echo -e "\e[93mCopy the commands below to the new opened terminal and close the new terminal when finished"
echo -e "\e[93mSelect 1 - Debian/Ubuntu and derivatives"
echo -e "\e[93mSelect all defaults"
echo -e "\e[93m./install.sh"
echo -e "\e[93mSelect 4 to compile smbexec binaries"
echo -e "\e[93mAfter compilation, select 5 to exit"
xterm -e "cd /opt/smbexec && ./install.sh"
echo "*************************************************************"
echo -e "\e[31mInstalling Gitrob"
echo -e "\e[32mReconnaissance tool for GitHub organizations"
echo -e "\e[0m"
git clone https://github.com/michenriksen/gitrob.git /opt/gitrob
gem install bundler
service postgresql start
echo -e "\e[93mCopy the commands below to the new opened terminal and close the new terminal when finished"
echo -e "\e[93mcreateuser -s gitrob --pwprompt"
echo -e "\e[93mcreatedb -O gitrob gitrob"
echo -e "\e[93mexit"
xterm -e "su postgres"
echo "Done, continuing"
echo -e "\e[0m"
cd /opt/gitrob/bin
gem install gitrob
echo "*************************************************************"
echo -e "\e[31mInstalling CMSmap"
echo -e "\e[32mCMSmap is a python open source CMS \(Content Management System\) scanner that automates the process of detecting security flaws"
echo -e "\e[0m"
git clone https://github.com/Dionach/CMSmap /opt/CMSmap
echo "*************************************************************"
echo -e "\e[31mInstalling WPScan"
echo -e "\e[32mWordPress vulnerability scanner and brute-force tool"
echo -e "\e[0m"
git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan
cd /opt/wpscan && ./wpscan.rb --update
echo "*************************************************************"
echo -e "\e[31mInstalling Eyewitness"
echo -e "\e[32mEyeWitness is designed to take screenshots of websites, provide some server header info, and identify default credentials if possible."
echo -e "\e[0m"
git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/EyeWitness
echo "*************************************************************"
echo -e "\e[31mInstalling Printer Exploits"
echo -e "\e[31mContains a number of commonly found printer exploits"
echo -e "\e[0m"
git clone https://github.com/MooseDojo/praedasploit /opt/praedasploit
echo "*************************************************************"
echo -e "\e[31mInstalling SQLMap"
echo -e "\e[31mSQL Injection tool"
echo -e "\e[0m"
git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap
echo "*************************************************************"
echo -e "\e[31mInstalling Recon-ng"
echo -e "\e[31mA full-featured web reconnaissance framework written in Python"
echo -e "\e[0m"
git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /opt/recon-ng
echo "*************************************************************"
echo -e "\e[31mInstalling Discover Scripts"
echo -e "\e[31mCustom bash scripts used to automate various pentesting tasks."
echo -e "\e[0m"
git clone https://github.com/leebaird/discover.git /opt/discover
cd /opt/discover && ./setup.sh
git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /opt/recon-ng
echo "*************************************************************"
echo -e "\e[31mInstalling BeEF Exploitation Framework"
echo -e "\e[31mA cross-site scripting attack framework"
echo -e "\e[0m"
cd /opt/
wget https://raw.github.com/beefproject/beef/a6a7536e/install-beef
chmod +x install-beef
./install-beef
echo "*************************************************************"
echo -e "\e[31mInstalling Responder"
echo -e "\e[31mA LLMNR, NBT-NS and MDNS poisoner, with built-in HTTP/SMB/MSSQL/FTP/LDAP rogue authentication server supporting NTLMv1/NTLMv2/LMv2," 
echo -e "\e[31m Extended Security NTLMSSP and Basic HTTP authentication. Responder will be used to gain NTLM challenge/response hashes"
echo -e "\e[0m"
git clone https://github.com/SpiderLabs/Responder.git /opt/Responder"
echo "*************************************************************"
echo -e "\e[31mInstalling The Hacker Playbook 2 - Custom Scripts"
echo -e "\e[31mA number of custom scripts written by Peter Kim for The Hacker Playbook 2."
echo -e "\e[0m"
git clone https://github.com/cheetz/Easy-P.git /opt/Easy-P
git clone https://github.com/cheetz/Password_Plus_One /opt/Password_Plus_One
git clone https://github.com/cheetz/PowerShell_Popup /opt/PowerShell_Popup
git clone https://github.com/cheetz/icmpshock /opt/icmpshock
git clone https://github.com/cheetz/brutescrape /opt/brutescrape
git clone https://www.github.com/cheetz/reddit_xss /opt/reddit_xss
echo "*************************************************************"
echo -e "\e[31mInstalling PowerTools "
echo -e "\e[31m PowerTools is a collection of PowerShell projects with a focus on offensive operations."
echo -e "\e[0m"
git clone https://github.com/PowerShellEmpire/PowerTools.git
echo "*************************************************************"
echo -e "\e[31mInstalling PowerSploit (PowerShell)"
echo -e "\e[31mPowerShell scripts for post exploitation"
echo -e "\e[0m"
git clone https://github.com/mattifestation/PowerSploit.git /opt/PowerSploit
cd /opt/PowerSploit && wget https://raw.githubusercontent.com/obscuresec/random/master/StartListener.py && wget https://raw.githubusercontent.com/darkoperator/powershell_scripts/master/ps_encoder.py
echo "*************************************************************"
echo -e "\e[31mInstalling nishang"
echo -e "\e[31m Nishang - PowerShell for penetration testing and offensive security."
echo -e "\e[0m"
git clone https://github.com/samratashok/nishang.git
echo "*************************************************************"
echo -e "\e[31mInstalling DSHashes"
echo -e "\e[31mExtracts user hashes in a user-friendly format for NTDSXtract"
echo -e "\e[0m"
wget http://ptscripts.googlecode.com/svn/trunk/dshashes.py -O /opt/NTDSXtract/dshashes.py
echo "*************************************************************"
echo -e "\e[31mInstalling SPARTA"
echo -e "\e[31mA python GUI application which simplifies network infrastructure penetration testing" 
echo -e "\e[31mby aiding the penetration tester in the scanning and enumeration phase."
echo -e "\e[0m"
git clone https://github.com/secforce/sparta.git /opt/sparta
apt-get install python-elixir
apt-get install ldap-utils rwho rsh-client x11-apps finger
echo "*************************************************************"
echo -e "\e[31mInstalling NoSQLMap"
echo -e "\e[31mA automated pentesting toolset for MongoDB database servers and web applications."
echo -e "\e[0m"
git clone https://github.com/tcstool/NoSQLMap.git /opt/NoSQLMap
echo "*************************************************************"
echo -e "\e[31mInstalling Spiderfoot"
echo -e "\e[31mOpen Source Footprinting Tool"
echo -e "\e[0m"
mkdir /opt/spiderfoot/ && cd /opt/spiderfoot
wget http://sourceforge.net/projects/spiderfoot/files/spiderfoot-2.3.0-src.tar.gz/download
tar xzvf download
pip install lxml
pip install netaddr
pip install M2Crypto
pip install cherrypy
pip install mako
echo "*************************************************************"
echo -e "\e[31mInstalling WCE"
echo -e "\e[31mWindows Credential Editor (WCE) is used to pull passwords from memory"
echo -e "\e[0m"
mkdir /opt/wce
cd /opt/wce
wget www.ampliasecurity.com/research/wce_v1_4beta_universal.zip
unzip wce_v1* -d /opt/wce && rm wce_v1*.zip
echo "*************************************************************"
echo -e "\e[31mInstalling Mimikatz"
echo -e "\e[31mUsed for pulling cleartext passwords from memory, Golden Ticket, skeleton key and more"
echo -e "\e[31mGrab the newest release from https://github.com/gentilkiwi/mimikatz/releases/latest"
echo -e "\e[0m"
cd /opt/ && wget http://blog.gentilkiwi.com/downloads/mimikatz_trunk.zip
unzip -d ./mimikatz mimikatz_trunk.zip
echo "*************************************************************"
echo -e "\e[31mInstalling SET"
echo -e "\e[31mSocial Engineering Toolkit (SET) will be used for the social engineering campaigns"
echo -e "\e[0m"
git clone https://github.com/trustedsec/social-engineer-toolkit/ /opt/set/
cd /opt/set && ./setup.py install
echo "*************************************************************"
echo -e "\e[31mInstalling Veil-Framework"
echo -e "\e[31mA red team toolkit focused on evading detection. It currently contains Veil-Evasion for generating AV-evading payloads, Veil-Catapult for delivering them to targets,"
echo -e "\e[31mand Veil-PowerView for gaining situational awareness on Windows domains. Veil will be used to create a python based Meterpreter executable."
echo -e "\e[0m"
git clone https://github.com/Veil-Framework/Veil /opt/Veil
cd /opt/Veil/ && ./Install.sh -c
echo "*************************************************************"
echo -e "\e[31mInstalling Fuzzing Lists (SecLists)"
echo -e "\e[31mThese are scripts to use with Burp to fuzz parameters"
echo -e "\e[0m"
git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists
echo "*************************************************************"
echo -e "\e[31mInstalling Net-Creds Network Parsing"
echo -e "\e[31mParse PCAP files for username/passwords"
echo -e "\e[0m"
git clone https://github.com/DanMcInerney/net-creds.git /opt/net-creds
echo "*************************************************************"
echo -e "\e[31mInstalling Wifite"
echo -e "\e[31mAttacks against WiFi networks"
echo -e "\e[0m"
git clone https://github.com/derv82/wifite /opt/wifite
echo "*************************************************************"
echo -e "\e[31mInstalling WIFIPhisher"
echo -e "\e[31mAutomated phishing attacks against WiFi networks"
echo -e "\e[0m"
git clone https://github.com/sophron/wifiphisher.git /opt/wifiphisher
echo "*************************************************************"
echo -e "\e[31mInstalling Phishing-Frenzy"
echo -e "\e[0m"
git clone https://github.com/pentestgeek/phishing-frenzy.git /var/www/phishing-frenzy
echo -e "\e[31mInstalling Custom List of Extras"
echo -e "\e[0m"
git clone https://github.com/macubergeek/gitlist.git /opt/gitlist
