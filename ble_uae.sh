#! /bin/bash

echo "______ _      _____       _   _  ___   _____ 
| ___ \ |    |  ___|     | | | |/ _ \ |  ___|
| |_/ / |    | |__ ______| | | / /_\ \| |__  
| ___ \ |    |  __|______| | | |  _  ||  __| 
| |_/ / |____| |___      | |_| | | | || |___ 
\____/\_____/\____/       \___/\_| |_/\____/ 
                                             
                                            "

$sudo sudo apt-get update && sudo apt-get upgrade
#mkdir session-owasp
#cd session-owasp
echo ******Dependencies******

lsb_release -a
        echo "Abort if it is not debian && ubuntu by ctrl+c"

sudo apt-get install python3 && sudo apt-get install python3-pip && sudo pip3 install pwntools
sudo sudo apt-get install bluetooth bluez libbluetooth-dev libudev-dev bluez-btsco bluez-dbg bluez-obexd bluez-tools bluez-cups bluez-hcidump bluez-tests curl apktool
sudo sudo apt-get update && sudo apt-get upgrade


#wget https://github.com/V33RU/OWASPSeasides--BLE-UAE/raw/master/nodejs_8.10.0_dfsg-2ubuntu0.4_amd64.deb
wget https://www.dropbox.com/s/p3vbboddyc52y5g/ble-exploits.zip

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

#sudo dpkg -i nodejs_8.10.0_dfsg-2ubuntu0.4_amd64.deb
#sudo apt-get install npm
sudo apt --fix-broken install

echo"________________________"

echo ____MiTM Tools____

#echo need a nodejs 8.10 and npm 3.5

echo btlejuice
echo -------------------------------
sudo npm install -g btlejuice


echo noble & bleno
echo -------------------------------
sudo npm install noble
sudo npm install bleno

echo gattacker
echo -------------------------------
sudo npm install gattacker

echo ----------BETTERCAP------------------
sudo apt-get install build-essential ruby-dev libpcap-dev
sudo apt-get install build-essential libpcap-dev net-tools
wget https://github.com/bettercap/bettercap/releases/download/v2.27.1/bettercap_linux_amd64_v2.27.1.zip
#unzip bettercap_linux_amd64_v2.27.1.zip
#cd bettercap_linux_amd64_v2.27.1
#mv bettercap /usr/bin


echo -------------NRF Connect--------------
#wget 

echo -------- Sniffle-----------
wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2?revision=c34d758a-be0c-476e-a2de-af8c6e16a8a2?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,8-2019-q3-update

git clone https://github.com/nccgroup/Sniffle.git
