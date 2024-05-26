#!/bin/bash

##---instalando_programas---##

echo "Copiando Repositorios..."

git clone https://github.com/Angell6991/.jupyter.git
git clone https://github.com/Angell6991/.programs.git
git clone https://github.com/Angell6991/.wallpaper.git
git clone https://github.com/Angell6991/bspwm.git
git clone https://github.com/Angell6991/dmenu.git
git clone https://github.com/Angell6991/kitty.git
git clone https://github.com/Angell6991/neofetch.git
git clone https://github.com/Angell6991/picom.git
git clone https://github.com/Angell6991/polybar.git
git clone https://github.com/Angell6991/ranger.git
git clone https://github.com/Angell6991/sxhkd.git
git clone https://github.com/Angell6991/zathura.git
git clone https://github.com/Angell6991/nvim.git

echo "Moviemdo repositorios y crando diretorios..."

mv .jupyter ~/
mv .programs ~/
mv .wallpaper ~/Imágenes
mv bspwm dmenu kitty neofetch picom polybar ranger sxhkd zathura nvim ~/.config

mkdir ~/Imágenes/capturas

echo "Instalación completada, revisa los scrit.sh en cada directorio, tal que sean ejecutables."


