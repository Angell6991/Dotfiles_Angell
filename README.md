<h2 align="center"> Hyprland + EWW </h2>

- [Install](#install)
- [Post install](#post-install)
- [Keysmap](#keysmap)


<p align="center">
  <img src="suport_readme/eww.gif">
</p>


#   Install 

Clone the repository:
```sh
git clone https://github.com/Angell6991/Dotfiles_Angell.git
```
Enter the directory:
```sh
cd Dotfiles_Angell
```
Give execution permissions to the script:
```sh
chmod u+x install.sh                                        
```
Run as superuser:
```sh
sudo ./install
```
>[!NOTE] 
>This repository is still under construction, so the installation 
>script may present problems.


#   Post install

## Install AUR repositorys

[Install yay](https://itsfoss.com/install-yay-arch-linux/)

Install FreeTube:
```sh
yay -S freetube
```
Install Zen-browser:
```sh
yay -S zen-browser-bin
```

## Install LaTex
```sh
sudo pacman -S texlive
```

## Install EWW
[Install Elkowars Wacky Widgets](https://elkowar.github.io/eww/)


## Install Cursor and GTK Themes
[Install themes GTK](https://github.com/Angell6991/Dotfiles_Angell/tree/master/Themes)


## Install retroarch

Install program:
```sh
sudo pacman -S retroarch
```

Check the emulator cores:
```sh
pacman -Ss libretro
```

#   Keysmap


## Terminal, menu, exit and close session
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>Return</kbd>| open kitty terminal
|<kbd>SUPER</kbd> + <kbd>space</kbd>| open dmenu
|<kbd>SUPER</kbd> + <kbd>BackSpace</kbd>| killactive
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>q</kbd>| close seccion, exit
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>l</kbd>| open power menu


## Switching between window types
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>f</kbd>| togglefloating
|<kbd>SUPER</kbd> + <kbd>p</kbd>| pseudo, # dwindle
|<kbd>SUPER</kbd> + <kbd>j</kbd>| togglesplit, # dwindle


## Brightness, audio, screenshot and recording controls 
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>F6</kbd>| +10% screen brightness
|<kbd>SUPER</kbd> + <kbd>F5</kbd>| -10% screen brightness
|<kbd>SUPER</kbd> + <kbd>F12</kbd>| +5% volume
|<kbd>SUPER</kbd> + <kbd>F11</kbd>| -5% volume
|<kbd>SUPER</kbd> + <kbd>Print</kbd>| screenshot
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>Print</kbd>| capture a section of the screen
|<kbd>SUPER</kbd> + <kbd>F3</kbd>| start recording the screen
|<kbd>SUPER</kbd> + <kbd>F4</kbd>| stop screen recording


## Window behavior in workspace
| Keys | Action |
|:-|:-|
|<kbd>SUPER</kbd> + <kbd>left, right, up, down</kbd>| Move the focus of the windows
|<kbd>SUPER</kbd> + <kbd>tab</kbd>| Move the focus of the windows
|<kbd>SUPER</kbd> + <kbd>ctrl</kbd> + <kbd>left, right, up, down</kbd>| Move focus between active workspaces
|<kbd>SUPER</kbd> + <kbd>1, 2, 3, 4, 5, 6</kbd>| Moving between workspaces
|<kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>1, 2, 3, 4, 5, 6</kbd>| Move window to a workspace
|<kbd>ctrl</kbd> + <kbd>SHIFT</kbd> + <kbd>1, 2, 3, 4, 5, 6</kbd>| Move window to a workspace without changing focus


