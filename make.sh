#/bin/bash

sudo cp -r pack/holoisoinstall /etc/
sudo cp -r pack/sddm.conf.d /etc/
sudo cp -r pack/xorg.conf.d /etc/X11/
sudo cp -r pack/Desktop /etc/skel/
sudo cp -r pack/hooks /etc/pacman.d/
sudo cp -r pack/holo_mirrorlistt /etc/pacman.d/
sudo cp -r pack/mirrorlistt /etc/pacman.d/
sudo cp -r pack/g_wheel /etc/sudoers.d/
mkdir pacman
mkdir pacman/mod
echo "creando copia de seguridad de pacman.conf"
sudo cp -r /etc/pacman.conf pacman/
echo "creando copia de seguridad de pacman.conf modificado"
echo "[holoiso-stable]\nInclude = /etc/pacman.d/holo_mirrorlistt\nSigLevel = Never\n\n[holostaging]\nInclude = /etc/pacman.d/holo_mirrorlistt\nSigLevel = Never\n\n[jupiter-rel]\nInclude = /etc/pacman.d/mirrorlistt\nSigLevel = Never\n\n[holo-rel]\nInclude = /etc/pacman.d/mirrorlistt\nSigLevel = Never\n\n[core-rel]\nInclude = /etc/pacman.d/mirrorlistt\nSigLevel = Never\n\n[extra-rel]\nInclude = /etc/pacman.d/mirrorlistt\nSigLevel = Never\n\n[community-rel]\nInclude = /etc/pacman.d/mirrorlistt\nSigLevel = Never\n\n[multilib-rel]\nInclude = /etc/pacman.d/mirrorlistt\nSigLevel = Never\n\n" >> /etc/pacman.conf 
sudo cp -r /etc/pacman.conf pacman/mod/
echo "desabilita los repositorios originales de arch linux con # /etc/pacman.conf"
echo "ejecuta el comando pacman -Syyuu --overwrite="*""
echo "instale holoiso-main con el comando pacman -S holoiso-main"
echo "y despues de instalar holoiso-main restablesca el pacman.conf del pacman modificado pacman/mod/pacman.conf"
echo "edita el usuario del archivo autlogin /etc/sddm.conf.d/autologin.conf"

