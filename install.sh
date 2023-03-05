#!/bin/sh


sudo apt install -y thunar xfdesktop4 xfwm4 xfce4-appfinder xfce4-panel xfce4-pulseaudio-plugin xfce4-session xfce4-settings terminator xfconf  xfce4-power-manager xfce4-notifyd xfce4-clipman-plugin xfce4-whiskermenu-plugin curl firefox-esr unzip bzip2 zsh vim build-essential

mkdir ~/Downloads && cd ~/Downloads

wget https://github.com/dracula/gtk/archive/master.zip && unzip master.zip && sudo cp -r gtk-master /usr/share/themes/Dracula
wget -qO- https://git.io/papirus-icon-theme-install | sh

mv .config ~/
mkdir ~/.fonts && cd ~/.fonts && wget https://fonts.google.com/download?family=Anonymous%20Pro -O fonts.zip && unzip fonts.zip && rm fonts.zip && fc-cache

cd ~/Downloads


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


cp ~/dotfiles/.zshrc ~/.zshrc
cp -r ~/dotfiles/.config/* ~/.config/

rm -rf ~/dotfiles
