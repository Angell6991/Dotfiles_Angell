#!/bin/bash

#####################################################
###-------------Ejecutar_el_script----------------###
#####################################################

var_user=$(whoami)

###-----------------------------------------------###
mkdir   /home/$var_user/.config

###------confuguracion_para_install_con_pip-------###
mkdir   /home/$var_user/.config/pip/
mv  files/pip.conf /home/$var_user/.config/pip/
pip install pylatex pyinstaller einsteinpy plotly kaleido customtkinter 


echo    "Instalación de programas completada"

#####################################################
###------------Repositiry_GitHub------------------###
#####################################################

###-----------Copiando_Repositorios---------------###
echo    "Copiando Repositorios: "
git clone https://github.com/Angell6991/.wallpaper.git
git clone https://github.com/Angell6991/fuzzel.git
git clone https://github.com/Angell6991/kitty.git
git clone https://github.com/Angell6991/yazi.git
git clone https://github.com/Angell6991/zathura.git
git clone https://github.com/Angell6991/nvim.git
git clone https://github.com/Angell6991/fastfetch.git
git clone https://github.com/Angell6991/btop.git

git clone https://github.com/Angell6991/hypr.git
git clone https://github.com/Angell6991/eww.git
git clone https://github.com/Angell6991/mako.git
git clone https://github.com/Angell6991/xournalpp.git

git clone https://github.com/Angell6991/niri.git
git clone https://github.com/Angell6991/ghostty.git


###-------------packer_para_nvim------------------###
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim


###--Moviendo_repositorios_y_creando_diretorios---###
echo    "Moviemdo repositorios y crando diretorios: "
mkdir   /home/$var_user/Projects
mkdir   /home/$var_user/Documents
mkdir   /home/$var_user/USB
mkdir   /home/$var_user/Documents/git_hub
mkdir   /home/$var_user/Images
mkdir   /home/$var_user/Images/capturas

mv  .wallpaper /home/$var_user/Images
mv  fuzzel kitty fastfetch yazi btop zathura hypr eww nvim mako quickshell niri ghostty /home/$var_user/.config


###-----Copiando_Repositorios_eww_install---------###
echo    "Instalando EWW:"
git clone https://github.com/elkowar/eww
mv eww .eww
mv .eww /home/$var_user/
# cargo build --release --no-default-features --features=wayland
# cargo +nightly build --release --no-default-features --features=wayland --manifest-path ~/.eww/Cargo.toml
cargo +stable build --release --no-default-features --features=wayland --manifest-path /home/$var_user/.eww/Cargo.toml


###----------install_oh-my-zsh_y_plugins----------###
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
curl -sS https://starship.rs/install.sh | sh


#####################################################
###---------------Files_config--------------------###
#####################################################

###-------Moviendo_archivos_de_configuración------###
echo    "Moviendo archivos de configuración: "

###--------confuguracion_shell_terminal-----------###
mv  files/.zsh_history files/.zshrc files/.gitconfig /home/$var_user/
mv  files/starship.toml /home/$var_user/.config
mv  files/starship-ghostty.toml /home/$var_user/.config

###------------Eliminar_buttos_Gnome--------------###
gsettings set org.gnome.desktop.wm.preferences button-layout ':'

###----------hacer_que_root_use_zsh---------------###
# chsh -s /bin/zsh root

echo "Operación completada" 



