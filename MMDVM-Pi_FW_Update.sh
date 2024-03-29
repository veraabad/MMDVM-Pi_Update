#! /bin/bash -x

# Script for updating FW on MMDVM-Pi
# using a Raspberry Pi running Pi-Star

sudo mount -o remount,rw /
sudo mount -o remount,rw /boot

sudo apt-get remove libi2c-dev
sudo apt-get remove stm32flash

sudo git clone https://git.code.sf.net/p/stm32flash/code stm32flash
cd stm32flash
sudo make
sudo make install
cd ../

sudo pistar-watchdog.service stop
sudo systemctl stop mmdvmhost.timer
sudo systemctl stop mmdvmhost.service

sudo stm32flash -i 20,-21,21:-20,21 /dev/ttyAMA0
sudo stm32flash -v -w mmdvm_f7.bin -g 0x0 -R -c /dev/ttyAMA0

sudo reboot now