#!/bin/bash

##---instalando_programas---##

echo "Copiando Repositorios..."

git clone https://github.com/Angell6991/.wallpaper.git
git clone https://github.com/Angell6991/dmenu.git
git clone https://github.com/Angell6991/kitty.git
git clone https://github.com/Angell6991/ranger.git
git clone https://github.com/Angell6991/zathura.git
git clone https://github.com/Angell6991/nvim.git
git clone https://github.com/Angell6991/fastfetch.git
git clone https://github.com/Angell6991/btop.git


# install oh-my-zsh y plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
curl -sS https://starship.rs/install.sh | sh

# dependencias de Renger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf

# packer para nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Moviemdo repositorios y crando diretorios..."
mkdir ~/Projects
mkdir ~/Documents
mkdir ~/Documents/git_hub
mkdir ~/Imágenes
mkdir ~/Imágenes/capturas

mv .wallpaper ~/Imágenes
mv  dmenu kitty fastfetch ranger btop zathura nvim ~/.config


echo install fonts

#crea carpetas en el directorio de fonts
sudo mkdir /usr/share/fonts/3270
sudo mkdir /usr/share/fonts/font-crackman
sudo mkdir /usr/share/fonts/Inconsolata
sudo mkdir /usr/share/fonts/clock_font
# extrae contenido 
sudo unzip Fonts/font-crackman.zip -d /usr/share/fonts/font-crackman/
sudo unzip Fonts/3270.zip -d /usr/share/fonts/3270/
sudo unzip Fonts/Inconsolata.zip -d /usr/share/fonts/Inconsolata/
sudo unzip Fonts/digital-dismay.zip -d /usr/share/fonts/clock_font/

sudo pacman -S ttf-dejavu ttf-liberation ttf-inconsolata ttf-roboto ttf-ubuntu-font-family
sudo pacman -S ttf-freefont noto-fonts ttf-arphic-uming ttf-arphic-ukai ttf-indic-otf
sudo pacman -S noto-fonts-cjk

echo "Instalación completada, revisa los scrit.sh en cada directorio, tal que sean ejecutables."


