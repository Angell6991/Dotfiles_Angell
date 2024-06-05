#!/bin/bash

##---instalando_programas---##

echo "Instalando programas..."

# Programas esenciales
sudo pacman -S sxhkd bspwm polybar zathura dmenu neovim picom kitty nitrogen ranger lxappearance font-manager python python-pip scrot neofetch i3lock feh xournalpp unzip unrar zsh 

# portapapeles 
sudo pacman -S xclip

# Sistemas de ventanas 
sudo pacman -S xorg-server xorg-xinit xorg-xrandr

# controlador de audio
sudo pacman -S alsa-utils

# controlador de brllo pantalla
sudo pacman -S brightnessctl

echo "Instalación completada"
