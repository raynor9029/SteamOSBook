#!/bin/bash

clear
bash makesteam
bash installS
bash driversvulkanintel
clear
sudo pacman -S neofetch net-tools -y
clear
neofetch
echo "instalacion terminada reinicie"