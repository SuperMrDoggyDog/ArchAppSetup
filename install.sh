#!/bin/bash

# cding into ~/ just in case
cd ~/

# Installing paru (An aur helper)
git clone git://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si

# Installing window managers
paru -S awesomewm openbox tint2 xmonad xmonad-contrib leftwm xmobar lightdm lightdm-gtk-greeter light-locker polybar

# Installing all programs needed
paru -S alacritty audacity blender brave-bin cheese deadbeef discord emacs exa gimp htop kdenlive libnotify libreoffice-fresh lutris mpv nano nitrogen notepadqq notifications-daemon neovim picom polkit qbittorent steam sudo udisks2 vim virt-manager virtualbox vlc wine-staging winetricks multimc multimc-curseforge librewolf-bin snapd kvantum xterm pcmanfm mu kitty appimagelauncher ripgrep fd atom blueman bullshit chrome-remote-desktop chromium checkupdates-aur emby-theater-bin feh firefox fish geary heroic-games-launcher-bin minigalaxy minecraft-launcher network-manager-applet networkmanager newsflash nextcloud-client obs-studio openssh openvpn plex-media-player playerctl playonlinux pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-qt qemu remmina samba spotify stacer termite tigervnc trayer vifm volumeicon fontmatrix

# Installing dmenu
mkdir ~/sourcecode
cd ~/sourcecode
git clone git://gitlab.com/SuperMrDoggyDog/dmenu.git
cd dmenu
sudo make install
cd ~/

# Installing surf
cd ~/sourcecode
git clone git://gitlab.com/SuperMrDoggyDog/surf.git
cd surf
sudo make install
cd ~/

# Installing BadWolf
cd ~/sourcecode
wget https://hacktivis.me/releases/badwolf-1.0.3.tar.gz
tar xfzv badwolf*.tar.gz
mv badwolf*/ badwolf
cd badwolf
make
sudo make install
cd ~/

# Installing xmenu
cd ~/sourcecode
git clone git://gitlab.com/SuperMrDoggyDog/xmenu.git
cd xmenu
sudo make install
cd ~/

# Cloning git repos
git clone git://gitlab.com/SuperMrDoggyDog/dotfiles.git ~/DotFiles
git clone git://gitlab.com/dwt1/dotfiles.git ~/DTDotFiles
git clone git://gitlab.com/SuperMrDoggyDog/wallpapers.git ~/Wallpapers
git clone git://gitlab.com/dwt1/wallpapers.git ~/DTWallpapers
git clone git://gitlab.com/SuperMrDoggyDog/privatefiles.git ~/PrivateFiles
