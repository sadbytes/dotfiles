#!/bin/sh

if [ $UID -ne 0 ]; then 
  echo "Run this script using sudo." 
  exit 1
fi

sudo apt install -y thunar xfdesktop4 xfwm4 xfce4-appfinder xfce4-panel xfce4-pulseaudio-plugin xfce4-session xfce4-settings terminator xfconf  xfce4-power-manager xfce4-notifyd xfce4-clipman-plugin xfce4-whiskermenu-plugin curl firefox-esr unzip bzip2 zsh vim build-essential

mkdir /home/$SUDO_USER/Downloads && cd /home/$SUDO_USER/Downloads

wget https://github.com/dracula/gtk/archive/master.zip && unzip master.zip && sudo cp -r gtk-master /usr/share/themes/Dracula
wget -qO- https://git.io/papirus-icon-theme-install | sh

mv .config /home/$SUDO_USER/
mkdir /home/$SUDO_USER/.fonts && cd /home/$SUDO_USER/.fonts && wget https://fonts.google.com/download?family=Anonymous%20Pro -O fonts.zip && unzip fonts.zip && rm fonts.zip && fc-cache

cd /home/$SUDO_USER/Downloads


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-/home/$SUDO_USER/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-/home/$SUDO_USER/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


cp /home/$SUDO_USER/dotfiles/.zshrc /home/$SUDO_USER/.zshrc
cp -r /home/$SUDO_USER/dotfiles/.config/* /home/$SUDO_USER/.config/

rm -rf /home/$SUDO_USER/dotfiles
