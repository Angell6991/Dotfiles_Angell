#!/bin/bash

##---Moviendo_archivos_de_configuración---##

echo "Moviendo archivos de configuración..."

# confuguracion shell terminal
mv .zsh_history .zshrc ~/
mv starship.toml ~/.config

#configuracion xorg,con el comando "startx" se iniacia el sistema de ventanas
mv .xinitrc ~/

# configuracion pacman
sudo mv pacman.conf /etc/

# config para permisoso de pip
sudo mv pip.conf

# configuracion  touchpad
sudo mv 30-touchpad.conf /etc/X11/xorg.conf.d

echo "Operación completada" 

######################################################
##-------------touch_mause_config_manual------------##
######################################################

# 1) Sersiorarse del que el controlator este instalado en caso de no estarlo se puede hacer mediante el comando:

# sudo pacman -S xf86-input-libinput

# para disribiciones en base Arch linux

# 2) Una vez instalado, dirigirse a la siguiente ruta:

# /etc/X11/xorg.conf.d

# 3) en esta ruta crear el archivo:

# 30-touchpad.conf

# Nota: para crearlo y editarlo hay que hacerlo con permisos de administrador

# 4) Abrirlo con un editor de texto y pegar lo siguiente en su contenido:

# Section "InputClass"
# 	Identifier "devname"
# 	Driver "libinput"
# 	Option "Tapping" "on"
# 	Option "NaturalScrolling" "true"
# EndSection

# 5) Guardar cambios y reiniciar PC
