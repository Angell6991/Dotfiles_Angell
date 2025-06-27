#!/bin/bash

#####################################################
###---------Ejecutar_el_script_como_sudo----------###
#####################################################

#####################################################
###----------Instalando_dependencias--------------###
#####################################################


###------------Instalando_programas---------------###
echo    "Iniciando la instalando de programas"

echo    "Programas esenciales:"

pacman -S  zathura zathura-pdf-mupdf zathura-ps zathura-djvu zathura-cb dmenu neovim  kitty  yazi nwg-look font-manager python python-pip eog xournalpp unzip unrar zsh imagemagick  exa btop  bat git-delta dosfstools pavucontrol gnome-calendar gnome-clocks hyprland hyprlock hypridle hyprpaper grim slurp mpv wf-recorder cmus timeshift xclip wl-clipboard alsa-utils brightnessctl mako libnotify pamixer ffmpeg ly fastfetch firefox telegram-desktop gimp xdg-desktop-portal-hyprland gtk-layer-shell drawio-desktop man-db 

pacman -S tgpt

systemctl enable ly.service
systemctl status ly.service

# config_tlp_gestor_de_energia
# sudo pacman -S tlp
# sudo systemctl enable tlp 
# sudo systemctl start tlp


###--------Instalando_librerias_python------------###
echo    "library_python: "
pacman -S tk python-matplotlib python-numpy python-distutils-extra python-sympy python-pandas python-pillow python-scikit-learn python-scipy python-pyfiglet

###------confuguracion_para_install_con_pip-------###
# mv  pip.conf /home/$var_user/.config/pip/
# pip install pylatex pyinstaller einsteinpy plotly kaleido customtkinter 


###------------Config_hora_bogota-----------------###
echo    "Configurando la hora para bogota Colombia"
timedatectl set-timezone America/Bogota
pacman -S ntp
systemctl enable ntpd
systemctl start ntpd


###---------------Config_nvim---------------------###
echo    "programas para nvim y telescope"
pacman -S ripgrep fd nodejs wget rustup composer php nodejs npm luarocks jdk-openjdk julia ruby biber xdotool
npm install -g tree-sitter-cli

echo    "Instalación de programas completada"


#####################################################
###--------------Config_Bluetooth-----------------###
#####################################################

echo    "Config_Bluetooth:"
pacman -S bluez-obex bluez bluez-utils blueman
systemctl enable bluetooth.service
systemctl start bluetooth.service
systemctl status bluetooth.service


###---------------Install_fonts-------------------###
echo    "Install fonts"
pacman -S ttf-dejavu ttf-liberation ttf-inconsolata ttf-roboto ttf-ubuntu-font-family ttf-freefont noto-fonts ttf-arphic-uming ttf-arphic-ukai ttf-indic-otf noto-fonts-cjk noto-fonts-emoji noto-fonts-extra 

###------crea_carpetas_en_el_directorio_de_fonts--###
mkdir /usr/share/fonts/3270
mkdir /usr/share/fonts/font-crackman
mkdir /usr/share/fonts/Inconsolata
mkdir /usr/share/fonts/clock_font

###--------------extrae_contenido-----------------### 
unzip Fonts/font-crackman.zip -d /usr/share/fonts/font-crackman/
unzip Fonts/3270.zip -d /usr/share/fonts/3270/
unzip Fonts/Inconsolata.zip -d /usr/share/fonts/Inconsolata/
unzip Fonts/digital-dismay.zip -d /usr/share/fonts/clock_font/

unzip Fonts/Wh40k.zip
unzip Fonts/warhammer40k.zip
mv  Wh40k /usr/share/fonts
mv  warhammer40k.zip /usr/share/fonts

###---------------Install_Themes------------------###
tar -xf Themes/oreo-white-cursors.tar.gz
tar -xf Themes/Graphite-Dark.tar.xz

mv  oreo_white_cursors /usr/share/icons
mv  Graphite-blue-Dark Graphite-Dark Graphite-green-Dark Graphite-orange-Dark Graphite-pink-Dark Graphite-purple-Dark Graphite-red-Dark Graphite-teal-Dark Graphite-yellow-Dark /usr/share/themes

#####################################################
###---------------Files_config--------------------###
#####################################################

###-----------configuracion_pacman----------------###
mv  pacman.conf /etc/

###----------configuracion_touchpad---------------###
# pacman -S xf86-input-libinput
mv  30-touchpad.conf /etc/X11/xorg.conf.d


echo "Operación completada" 



