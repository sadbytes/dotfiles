#!/bin/sh


sudo apt install -y thunar xfdesktop4 xfwm4 xfce4-appfinder xfce4-panel xfce4-pulseaudio-plugin xfce4-session xfce4-settings terminator xfconf  xfce4-power-manager xfce4-notifyd xfce4-clipman-plugin xfce4-whiskermenu-plugin curl firefox-esr unzip bzip2 zsh vim build-essential mousepad

wget https://github.com/dracula/gtk/archive/master.zip && unzip master.zip && sudo cp -r gtk-master /usr/share/themes/Dracula
wget -qO- https://git.io/papirus-icon-theme-install | sh


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s /bin/zsh


cp .zshrc ~/.zshrc
cp -r .config ~/
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/


rm -rf ~/dotfiles
