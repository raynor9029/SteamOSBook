 #!/bin/bash

#pacman -S holoiso-main --overwrite="*"

clear
echo "digite el nombre del usuario por teclado: "

read usuario


clear
sudo pacman -S holoiso-stable/linux-firmware
sudo pacman -S intel-ucode
sudo pacman -S base base-devel linux-neptune linux-neptune-headers
clear
echo "Instalando SteamOS 3"

sudo pacman -S holoiso-stable/vulkan-intel holoiso-stable/lib32-vulkan-intel mesa lib32-mesa
mkdir /home/${usuario}/Desktop
sudo cp /etc/holoinstall/steamos-gamemode.desktop /home/${usuario}/Desktop/steamos-gamemode.desktop
sudo chmod +x /home/${usuario}/Desktop/steamos-gamemode.desktop
sudo ln -s /usr/share/applications/steam.desktop /home/${usuario}/Desktop/steam.desktop
sudo chown -R ${usuario}:${usuario} /home/${usuario}/Desktop

sudo usermod -a -G rfkill ${usuario}
sudo usermod -a -G wheel ${usuario}
sudo sed -i 's/steamdeck_stable/steamdeck_publicbeta/g' /usr/bin/steam
clear
sudo pacman -S flatpak packagekit-qt5 unzip vim
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo pacman -S linux-holoiso linux-holoiso-headers
sudo pacman -S win600-xpad-dkms dkms
sudo systemctl enable cups bluetooth sddm holoiso-reboot-tracker
sudo systemctl enable sddm NetworkManager systemd-timesyncd cups bluetooth
sudo systemctl enable powerbutton-chmod && sudo systemctl start powerbutton-chmod
sudo systemctl enable steamos-offload.target opt.mount root.mount srv.mount usr-lib-debug.mount usr-local.mount var-cache-pacman.mount var-lib-docker.mount var-lib-flatpak.mount var-lib-systemd-coredump.mount var-log.mount var-tmp.mount
sudo touch /etc/holoiso-oobe

sudo nano /etc/sddm.conf.d/autologin.conf

echo "instalacion terminada reinicia y listo"

