#!/bin/bash

# cding into ~/ just in case
cd ~/

# Installing paru (An aur helper)
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si
cd ~/

# Installing applications
paru -S $(cat apps.txt)

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
sudo cp -r usr/* /usr/
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
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
rustup toolchain add nightly
cargo +nightly install racer
rustup component add rust-src
paru -S jdk-openjdk python pmbootstrap android-emulator-canary go nodejs npm eclipse-rust hlint cabal-install rust-analyzer ktlint marked python-isort python-pipenv python-nose python-pytest shellcheck stylelint js-beautify

# Cloning git repos
git clone https://www.gitlab.com/SuperMrDoggyDog/dotfiles.git ~/
git clone https://www.gitlab.com/SuperMrDoggyDog/dotfiles.git ~/DotFiles
git clone https://www.gitlab.com/dwt1/dotfiles.git ~/DTDotFiles
git clone https://www.gitlab.com/SuperMrDoggyDog/wallpapers.git ~/Wallpapers
git clone https://www.gitlab.com/dwt1/wallpapers.git ~/DTWallpapers
git clone https://www.gitlab.com/SuperMrDoggyDog/privatefiles.git ~/PrivateFiles
