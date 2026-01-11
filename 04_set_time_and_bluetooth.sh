#!/bin/bash

###--------Instalando_librerias_python------------###
echo    "library_python: "
pacman -S --noconfirm tk python-matplotlib python-numpy python-distutils-extra python-sympy python-pandas python-pillow python-scikit-learn python-scipy python-pyfiglet python-tabulate python-openpyxl

###------confuguracion_para_install_con_pip-------###
# mv  pip.conf /home/$var_user/.config/pip/
# pip install pylatex pyinstaller einsteinpy plotly kaleido customtkinter 


###------------Config_hora_bogota-----------------###
echo    "Configurando la hora para bogota Colombia"
timedatectl set-timezone America/Bogota
pacman -S --noconfirm ntp
systemctl enable ntpd
systemctl start ntpd


###---------------Config_nvim---------------------###
echo    "programas para nvim y telescope"
pacman -S --noconfirm ripgrep fd nodejs wget rustup composer php nodejs npm luarocks jdk-openjdk julia ruby biber xdotool
npm install -g tree-sitter-cli

echo    "Instalación de programas completada"


#####################################################
###--------------Config_Bluetooth-----------------###
#####################################################

echo    "Config_Bluetooth:"
pacman -S --noconfirm bluez-obex bluez bluez-utils blueman
systemctl enable bluetooth.service
systemctl start bluetooth.service
systemctl status bluetooth.service


