#!/bin/bash
echo 'Weed OS Embed 0.1.0 Beta' 
echo 'Made with < 3 in Florida'
sleep 3
clear

### Stage 1 

sudo apt update
sudo apt xserver-xorg xinit unzip wget libopenal-dev mesa-common-dev -y

mkdir cache 
mkdir ~/.icons
mkdir ~/.themes
mkdir Desktop
mkdir Downloads
mkdir Documents
mkdir Pictures
mkdir Videos 
mkdir ~/.config/qt5ct/colors

### Stage 2 

sudo apt install openbox lightdm lightdm-gtk-greeter xfce4-panel xfce4-whiskermenu-plugin lxsession-logout lxsession pulseaudio xfce4-pulseaudio plugin git fonts-roboto pcmanfm network-manager-gnome xfce4-clipman -y
sudo apt install lxappearance xarchiver pavucontrol fonts-roboto menulibre mugshot lightdm-gtk-greeter-settings xfce4-terminal qt5ct -y
WEEDOSSCRIPT=`pwd`

#cd cache
#git clone https://github.com/numixproject/numix-icon-theme-circle
#sudo cp -r numix-icon-theme-circle/Numix-* /usr/share/icons
#cp -r numix-icon-theme-circle/Numix-* ~/.icons
#rm -rf numix-icon-theme-circle/

# Upstream Materia theme goes here. #
sudo apt install materia-gtk-theme
#  WM Theme # 
git clone https://github.com/ddnexus/equilux-theme


### Stage 3 

#cd cache
#git clone https://github.com/HeteroChromia420/Global-Menu-Enabler
#sudo apt install xfce4-appmenu-plugin vala-panel-appmenu appmenu* -y 
#xfconf-query -c xsettings -p /Gtk/ShellShowsMenubar -n -t bool -s true
#xfconf-query -c xsettings -p /Gtk/ShellShowsAppmenu -n -t bool -s true
#sudo cp Global-Menu-Enabler/52appmenu-gtk-module_add-to-gtk-modules /etc/X11/Xsession.d
#cd ${WEEDOSSCRIPT}/

cd cache 
wget https://cdn.discordapp.com/attachments/926440184411729940/1147793538239696956/weed.png
cp weed.png ~/.config/weedOS 
cd ${WEEDOSSCRIPT}/

#cd cache 
#wget https://cdn.discordapp.com/attachments/926440184411729940/1171665539165331546/lightdm.zip
#unzip lightdm.zip
#sudo cp -r lightdm.conf /etc/lightdm/
#sudo cp -r lightdm-gtk-greeter.conf /etc/lightdm/
#cd ${WEEDOSSCRIPT}/

cd cache
wget https://cdn.discordapp.com/attachments/926440184411729940/1171673903853211648/bgrt-mi.zip
unzip bgrt-mi.zip 
sudo cp -r bgrt-mi/ /usr/share/plymouth/themes/
sudo plymouth-set-default-theme bgrt-mi -R 
cd ${WEEDOSSCRIPT}/

#wget <userdata>

### Cleanup

rm -rf cache/
clear 
sudo apt remove xterm -y
