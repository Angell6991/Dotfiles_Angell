#!/bin/bash

#####################################################
###---------------Install_fonts-------------------###
#####################################################
clear
echo    "Install fonts ..."

pacman -S --noconfirm ttf-dejavu ttf-liberation ttf-inconsolata ttf-roboto ttf-ubuntu-font-family ttf-freefont noto-fonts ttf-arphic-uming ttf-arphic-ukai ttf-indic-otf noto-fonts-cjk noto-fonts-emoji noto-fonts-extra 

###------crea_carpetas_en_el_directorio_de_fonts--###
mkdir /usr/share/fonts/3270
mkdir /usr/share/fonts/font-crackman
mkdir /usr/share/fonts/Inconsolata
mkdir /usr/share/fonts/clock_font

###--------------extrae_contenido-----------------### 
unzip files/Fonts/font-crackman.zip -d /usr/share/fonts/font-crackman/
unzip files/Fonts/3270.zip -d /usr/share/fonts/3270/
unzip files/Fonts/Inconsolata.zip -d /usr/share/fonts/Inconsolata/
unzip files/Fonts/digital-dismay.zip -d /usr/share/fonts/clock_font/

unzip files/Fonts/Wh40k.zip
unzip files/Fonts/warhammer40k.zip
mv  Wh40k /usr/share/fonts
mv  warhammer40k /usr/share/fonts

unzip files/Fonts/frank_font.zip
mv  frank-font.ttf /usr/share/fonts

unzip files/Fonts/star_cratf_logo.zip
mv  star_cratf_logo/starcraft-logos.ttf /usr/share/fonts


###---------------Install_Themes------------------###
unzip files/themes/Future-dark-cursors.zip
unzip files/themes/Moga-Neon-Water.zip

tar -xf files/Themes/oreo-white-cursors.tar.gz
tar -xf files/Themes/oreo_pink_cursors.tar.gz
tar -xf files/Themes/Graphite-Dark.tar.xz

mv  Moga-Neon-Water /usr/share/icons
mv  Future-dark-cursors /usr/share/icons
mv  oreo_pink_cursors /usr/share/icons
mv  oreo_white_cursors /usr/share/icons
mv  Graphite-blue-Dark Graphite-Dark Graphite-green-Dark Graphite-orange-Dark Graphite-pink-Dark Graphite-purple-Dark Graphite-red-Dark Graphite-teal-Dark Graphite-yellow-Dark /usr/share/themes


