#!/bin/bash

##---instalando_programas---##

echo "Instalando programas..."

# Programas esenciales
sudo pacman -S sxhkd bspwm polybar zathura dmenu neovim picom kitty nitrogen ranger lxappearance font-manager python python-pip scrot neofetch i3lock eog xournalpp unzip unrar zsh imagemagick w3m exa htop feh tlp bat git-delta dosfstools

# library_python
sudo pacman -S tk python-matplotlib python-numpy
sudo pacman -S python-distutils-extra

# portapapeles 
sudo pacman -S xclip

# Sistemas de ventanas 
sudo pacman -S xorg-server xorg-xinit xorg-xrandr
sudo pacman -S xorg-xsetroot

# controlador de audio
sudo pacman -S alsa-utils

# controlador de brllo pantalla
sudo pacman -S brightnessctl

# Configurando la hora para bogota Colombia
sudo timedatectl set-timezone America/Bogota
sudo pacman -S ntp
sudo systemctl enable ntpd
sudo systemctl start ntpd

# programas para nvim
# programas para Telescope
sudo pacman -S ripgrep
sudo pacman -S fd

# autocompltado de nvim
sudo pacman -S nodejs
sudo pacman -S wget rustup composer php nodejs npm luarocks jdk-openjdk julia ruby
sudo npm install -g tree-sitter-cli

# Dependencias zathura and LaTex para VimTex
sudo pacman -S biber xdotool


echo "Instalación completada"
