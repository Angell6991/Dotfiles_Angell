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


# install oh-my-zsh y plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

# packer para nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Moviemdo repositorios y crando diretorios..."

mkdir ~/Imágenes
mkdir ~/Imágenes/capturas

mv .jupyter ~/
mv .programs ~/
mv .wallpaper ~/Imágenes
mv bspwm dmenu kitty neofetch picom polybar ranger sxhkd zathura nvim ~/.config


echo install fonts

#crea carpetas en el directorio de fonts
sudo mkdir /usr/share/fonts/3270
sudo mkdir /usr/share/fonts/font-crackman
sudo mkdir /usr/share/fonts/Inconsolata
# extrae contenido 
sudo unzip Fonts/font-crackman.zip -d /usr/share/fonts/font-crackman/
sudo unzip Fonts/3270.zip -d /usr/share/fonts/3270/
sudo unzip Fonts/Inconsolata.zip -d /usr/share/fonts/Inconsolata/

sudo pacman -S ttf-dejavu ttf-liberation ttf-inconsolata ttf-roboto ttf-ubuntu-font-family
sudo pacman -S ttf-freefont noto-fonts ttf-arphic-uming ttf-arphic-ukai ttf-indic-otf

echo "Instalación completada, revisa los scrit.sh en cada directorio, tal que sean ejecutables."


