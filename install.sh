#!/bin/bash

cd

sudo pacman -S atom notepadqq lutris alacritty cheese chromium deadbeef udisks2 emacs gimp htop keepassxc virtualbox virt-manager qbittorent steam vim neovim exa vlc nano sudo audacity kdenlive discord libreoffice-fresh libnotify notification-daemon wine-staging winetricks

git clone https://aur.archlinux.org/yay-bin.git

cd yay-bin

makepkg -si

cd

yay -S balena-etcher multimc5 multimc-curseforge minecraft-launcher nbtexplorer stacer-bin appimagelauncher-git

mkdir Applications

cd Applications

wget https://github.com/lbryio/lbry-desktop/releases/download/v0.49.3/LBRY_0.49.3.AppImage

cd ~/Downloads/

wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.19.7784.tar.gz

tar xfzv ./jetbrains-toolbox-1.19.7784.tar.gz

mv ./jetbrains-toolbox-1.19.7784/jetbrains-toolbox-1.19.7784.appimage ~/Applications

cd ~/Applications

wget https://appoutlet.herokuapp.com/download/appimage