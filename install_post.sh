#!/bin/bash

pacman -S --noconfirm texlive texlive-langenglish texlive-langspanish

sudo pacman -S --noconfirm retroarch retroarch-assets-glui retroarch-assets-ozone retroarch-assets-xmb

# pacman -Ss libretro
pacman -S --noconfirm libretro-blastem libretro-bsnes libretro-bsnes-hd libretro-bsnes2014 libretro-core-info libretro-flycast libretro-genesis-plus-gx libretro-kronos libretro-nestopia libretro-snes9x libretro-yabause


sudo pacman -S lutris wine winetricks lib32-giflib lib32-mpg123 lib32-openal lib32-vulkan-icd-loader lib32-vulkan-radeon lib32-nvidia-utils vkd3d lib32-vkd3d vulkan-intel lib32-vulkan-intel
