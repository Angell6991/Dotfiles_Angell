#!/bin/bash

clear
echo    "config firewall and init service ly ..."

###---------------config_firewall-----------------###
ufw limit 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw default deny incoming
ufw default allow outgoing
ufw enable
ufw allow from 192.168.0.0/24 to any port 53317 proto tcp
ufw allow from 192.168.0.0/24 to any port 53317 proto udp

###------------config_login_interface-------------###
systemctl enable ly.service
systemctl status ly.service

###-----------------------------------------------###
# config_tlp_gestor_de_energia
# sudo pacman -S tlp
# sudo systemctl enable tlp 
# sudo systemctl start tlp


