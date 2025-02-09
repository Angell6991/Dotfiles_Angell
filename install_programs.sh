#!/bin/bash

##---instalando_programas---##

echo "Instalando programas..."

# Programas esenciales
sudo pacman -S  zathura dmenu neovim  kitty  ranger nwg-look font-manager python python-pip eog xournalpp unzip unrar zsh imagemagick  exa btop  bat git-delta dosfstools pavucontrol gnome-calendar gnome-clocks hyprland hyprlock hypridle hyprpaper grim slurp lightdm mpv wf-recorder

# config_tlp_gestor_de_energia
# sudo pacman -S tlp
# sudo systemctl enable tlp 
# sudo systemctl start tlp 

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

# controlador de brillo pantalla
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

# autocompletado de nvim
sudo pacman -S nodejs
sudo pacman -S wget rustup composer php nodejs npm luarocks jdk-openjdk julia ruby
sudo npm install -g tree-sitter-cli

# Dependencias zathura and LaTex para VimTex
sudo pacman -S biber xdotool


echo "Instalación completada"
