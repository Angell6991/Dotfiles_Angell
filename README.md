<h2 align="center"> Hyprland + EWW </h2>

- [Install](#install)
- [Post install](#post-install)
- [Keysmap](#keysmap)


<p align="center">
  <img src="suport_readme/eww.gif">
</p>


#   Install 

Clonar el repositorio:
```sh
git clone https://github.com/Angell6991/Dotfiles_Angell.git
```
Entra al directorio:
```sh
cd Dotfiles_Angell
```
Darpermisos de ejecucion al script:
```sh
chmod u+x install.sh                                        
```
Ejecutar como super usuario:
```sh
sudo ./install
```
>[!NOTE] 
>Este repositorio aun se encuentra en construcción, por lo que el  
>scritp de instalación puede presentar problemas.


#   Post install

## Instalar repositorios AUR

[Instalación yay](https://itsfoss.com/install-yay-arch-linux/)

Instalar FreeTube:
```sh
yay -S freetube
```
Instalar Zen-browser:
```sh
yay -S zen-browser-bin
```

## Instalar LaTex
```sh
sudo pacman -S texlive
```

## Instalar EWW
[Instalación Elkowars Wacky Widgets](https://elkowar.github.io/eww/)


## Instalar los temas del cursor y GTK
[Instalación temas GTK](https://github.com/Angell6991/Dotfiles_Angell/tree/master/Themes)


## Instalar retroarch

Instalar programa:
```sh
sudo pacman -S retroarch
```

Consulta los nucleos de emuladores:
```sh
pacman -Ss libretro
```

#   Keysmap



