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


## Terminal,menu,salir y close_secion
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>Return</kbd>| open kitty terminal
|<kbd>SUPER</kbd> + <kbd>space</kbd>| open dmenu
|<kbd>SUPER</kbd> + <kbd>BackSpace</kbd>| killactive
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>q</kbd>| close seccion, exit
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>l</kbd>| open power menu


## Cambio entre tipo de ventanas
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>f</kbd>| togglefloating
|<kbd>SUPER</kbd> + <kbd>p</kbd>| pseudo, # dwindle
|<kbd>SUPER</kbd> + <kbd>j</kbd>| togglesplit, # dwindle


## controles de brillo, audio, captura de pantalla y grabación 
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>F6</kbd>| +10% brillo pantalla
|<kbd>SUPER</kbd> + <kbd>F5</kbd>| -10% brillo pantalla
|<kbd>SUPER</kbd> + <kbd>F12</kbd>| +5% volumen
|<kbd>SUPER</kbd> + <kbd>F11</kbd>| -5% volumen
|<kbd>SUPER</kbd> + <kbd>Print</kbd>| captura de pantalla
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>Print</kbd>| captura una sección de la pantalla
|<kbd>SUPER</kbd> + <kbd>F3</kbd>| inicia a grabar la pantalla
|<kbd>SUPER</kbd> + <kbd>F4</kbd>| detiene la grabación de la pantalla


## Comportamiento de las ventanas en workspace
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>left, right, up, down</kbd>| Mover el foco de las ventanas
|<kbd>SUPER</kbd> + <kbd>tab</kbd>| Mover el foco de las ventanas
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>left, right, up, down</kbd>| Mover el foco entre workspace activos
|<kbd>SUPER</kbd> + <kbd>1, 2, 3, 4, 5, 6</kbd>| Moverse entre los workspaces
|<kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>1, 2, 3, 4, 5, 6</kbd>| Mover ventana a un workspace
|<kbd>ctrl</kbd> + <kbd>SHIFT</kbd> + <kbd>1, 2, 3, 4, 5, 6</kbd>| Mover ventana a un workspace sin cambiar foco


