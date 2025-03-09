#!/bin/bash

#####################################################
###---------Ejecutar_el_script_como_sudo----------###
#####################################################

var_user=$(whoami)

#####################################################
###----------Instalando_dependencias--------------###
#####################################################


###------------Instalando_programas---------------###
echo    "Iniciando la instalando de programas"

echo    "Programas esenciales:"

pacman -S  zathura zathura-pdf-mupdf zathura-ps zathura-djvu zathura-cb dmenu neovim  kitty  ranger nwg-look font-manager python python-pip eog xournalpp unzip unrar zsh imagemagick  exa btop  bat git-delta dosfstools pavucontrol gnome-calendar gnome-clocks hyprland hyprlock hypridle hyprpaper grim slurp lightdm mpv wf-recorder cmus timeshift xclip wl-clipboard alsa-utils brightnessctl tlp

# config_tlp_gestor_de_energia
# sudo pacman -S tlp
# sudo systemctl enable tlp 
# sudo systemctl start tlp


###--------Instalando_librerias_python------------###
echo    "library_python: "
pacman -S tk python-matplotlib python-numpy python-distutils-extra python-sympy python-pandas python-pillow python-scikit-learn python-scipy

###------confuguracion_para_install_con_pip-------###
mv  pip.conf /home/$var_user/.config/pip/
pip install pylatex pyinstaller einsteinpy plotly kaleido customtkinter 


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


#####################################################
###------------Repositiry_GitHub------------------###
#####################################################


###-----------Copiando_Repositorios---------------###
echo    "Copiando Repositorios: "
git clone https://github.com/Angell6991/.wallpaper.git
git clone https://github.com/Angell6991/dmenu.git
git clone https://github.com/Angell6991/kitty.git
git clone https://github.com/Angell6991/ranger.git
git clone https://github.com/Angell6991/zathura.git
git clone https://github.com/Angell6991/nvim.git
git clone https://github.com/Angell6991/fastfetch.git
git clone https://github.com/Angell6991/btop.git
git clone https://github.com/Angell6991/lightdm.git

git clone https://github.com/Angell6991/hypr.git
git clone https://github.com/Angell6991/eww.git


###----------install_oh-my-zsh_y_plugins----------###
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
curl -sS https://starship.rs/install.sh | sh


###-----------dependencias_de_Ranger--------------###
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf


###-------------packer_para_nvim------------------###
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


###--Moviendo_repositorios_y_creando_diretorios---###
echo    "Moviemdo repositorios y crando diretorios: "
mkdir   /home/$var_user/Projects
mkdir   /home/$var_user/Documents
mkdir   /home/$var_user/Documents/git_hub
mkdir   /home/$var_user/Imágenes
mkdir   /home/$var_user/Imágenes/capturas

mv  .wallpaper /home/$var_user/Imágenes
mv  dmenu kitty fastfetch ranger btop zathura hypr eww nvim /home/$var_user/.config
mv  lightdm /etc/


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

echo    "Instalación de repo GitHub y fonts completada"


#####################################################
###---------------Files_config--------------------###
#####################################################

###-------Moviendo_archivos_de_configuración------###
echo    "Moviendo archivos de configuración: "

###--------confuguracion_shell_terminal-----------###
mv  .zsh_history .zshrc .gitconfig /home/$var_user/
mv  starship.toml /home/$var_user/.config
mv  .xprofile /home/$var_user/

##########################################
### configuracion xorg,                ### 
### con el comando "startx"            ###
### se iniacia el sistema de ventanas  ### 
##########################################
mv  .xinitrc /home/$var_user/

###-----------configuracion_pacman----------------###
mv  pacman.conf /etc/

###----------configuracion_touchpad---------------###
pacman -S xf86-input-libinput
mv  30-touchpad.conf /etc/X11/xorg.conf.d

###----------hacer_que_root_use_zsh---------------###
chsh -s /bin/zsh root

echo "Operación completada" 



