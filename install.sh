#!/bin/bash

# cding into ~/ just in case
cd ~/

# Installing paru (An aur helper)
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si

# Installing window managers
paru -S nvidia xorg xorg-xinit awesomewm openbox tint2 xmonad xmonad-contrib leftwm xmobar lightdm lightdm-gtk-greeter light-locker polybar mesa qtile

# Installing all programs needed
paru -S alacritty audacity blender brave-bin cheese deadbeef discord emacs exa gimp htop kdenlive libnotify libreoffice-fresh lutris mpv nano neofetch nitrogen notepadqq notifications-daemon neovim picom polkit qbittorent steam sudo udisks2 vim virt-manager virtualbox vlc wine-staging winetricks multimc multimc-curseforge librewolf-bin snapd kvantum xterm pcmanfm mu kitty appimagelauncher ripgrep fd atom blueman bullshit chrome-remote-desktop chromium checkupdates-aur emby-theater-bin feh firefox fish geary heroic-games-launcher-bin minigalaxy minecraft-launcher network-manager-applet networkmanager newsflash nextcloud-client obs-studio openssh openvpn plex-media-player playerctl playonlinux pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-qt qemu remmina samba spotify stacer termite tigervnc trayer vifm volumeicon fontmatrix sxiv hplip python-pyqt5 rpcbind sane xsane python-reportlab python-pillow libusb hplip-plugin alsa-utils vi 0ad alsa-lib alsa-plugins alsa-utils android-studio-canary arc-gtk-theme arc-icon-theme batbash-completion awk checkupdates+aur cmake code gparted kdeconnect make lxappearance obconf obmenu tar mbsync-git mailspring

# Archer T6E
sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')
paru -S broadcom-wl-dkms

# Installing fonts
paru -S nerd-fonts-robotomono ttf-ubuntu-font-family

# Installing starship
mkdir ~/Downloads
cd ~/Downloads
curl -fsSL https://starship.rs/install.sh | bash

# Installing pulseway
cd ~/Downloads
wget https://www.pulseway.com/download/pulseway_x64.pkg.tar.xz
mkdir pulseway
tar xf pulseway_x64.pkg.tar.xz -C ./pulseway
cd pulseway
sudo cp -r etc/* /etc/
sudo cp -r var/* /var/
sudo cp -r usr/ /usr/
sudo systemctl enable --now pulseway
sudo cp /etc/pulseway/config.xml.sample /etc/pulseway/config.xml
sudo systemctl restart pulseway
sudo pulseway-registration

# Installing dmenu
mkdir ~/sourcecode
cd ~/sourcecode
git clone https://www.gitlab.com/SuperMrDoggyDog/dmenu.git
cd dmenu
sudo make install
cd ~/

# Installing surf
cd ~/sourcecode
git clone https://www.gitlab.com/SuperMrDoggyDog/surf.git
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
git clone https://www.gitlab.com/SuperMrDoggyDog/xmenu.git
cd xmenu
sudo make install
cd ~/

# Installing rust-lang and needed tools
paru -S rustup
rustup toolchain add nightly
cargo +nightly install racer
rustup component add rust-src
paru -S jdk-openjdk python pmbootstrap android-emulator-canary go nodejs npm eclipse-rust

# Installing doom emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# Setting up dotfiles
git clone https://www.gitlab.com/SuperMrDoggyDog/dotfiles.git ~/DotFiles
cd ~/DotFiles
cp .bashrc ~/
cp -r .doom.d/ ~/.doom
cp -r .config/ ~/.config/
cp -r .local   ~/.local
cp -r .xmonad ~/.local

# Cloning git repos
git clone https://www.gitlab.com/dwt1/dotfiles.git ~/DTDotFiles
git clone https://www.gitlab.com/SuperMrDoggyDog/wallpapers.git ~/Wallpapers
git clone https://www.gitlab.com/dwt1/wallpapers.git ~/DTWallpapers
git clone https://www.gitlab.com/SuperMrDoggyDog/privatefiles.git ~/PrivateFiles
