#!/bin/bash

#####################################################
###-----------configuracion_pacman----------------###
#####################################################
clear
echo    "configuracion_pacman..."

###-----------keys_for_chaotic_AUR----------------###
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB

###--------synchronizing_repositories-------------###
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

###----loading_the_pacman_configuration_file------###
mv  pacman.conf /etc/

###-------------update_system---------------------###
pacman -Syu --noconfirm
