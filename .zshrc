######################################################
######################################################
###          _                        __ _         ###   
###         | |                      / _(_)        ###   
###  _______| |__     ___ ___  _ __ | |_ _  __ _   ###   
### |_  / __| '_ \   / __/ _ \| '_ \|  _| |/ _` |  ###  
###  / /\__ \ | | | | (_| (_) | | | | | | | (_| |  ###   
### /___|___/_| |_|  \___\___/|_| |_|_| |_|\__, |  ###   
###                                         __/ |  ###   
###                                        |___/   ###
######################################################
###-----------------zshrc_config-------------------###
######################################################

###---------------export_oh_my_zsh-----------------###
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="intheloop"  #(jaischeema,half-life,darkblood,sorin,intheloop,nicoulaj,refined,kardan)


###-------------export_theme_for_bat---------------###
# export BAT_THEME="Nord"
export BAT_THEME="OneHalfDark"


###---------------export_EXA_COLORS----------------###
export EXA_COLORS="ur=1;36:uw=1;37:ux=1;35:gr=0;36:gw=0;37:gx=0;35:tr=1;36:tw=1;37:tx=1;35:sn=1;36:uu=1;35:da=0;37"
export LS_COLORS="$LS_COLORS:*.c=1;38:*.*.cpp=1;38:*.py=1;38:*.tex=0;35:*.txt=0;38:*.dat=0;38:*.md=0;38:*"


###---------------plugins_oh_my_zsh----------------###
plugins=(
        git
        # fast-syntax-highlighting
        zsh-autosuggestions
        web-search
        fast-syntax-highlighting
        )
source $ZSH/oh-my-zsh.sh        #Iniciar_oh_my_zsh
# eval "$(starship init zsh)"     #Iniciar_Starship

###---------------Iniciar_Starship-----------------###
if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
  # Estamos en Ghostty
  export STARSHIP_CONFIG="$HOME/.config/starship-ghostty.toml"
else
  # Otra terminal o valor por defecto
  export STARSHIP_CONFIG="$HOME/.config/starship.toml"
fi

eval "$(starship init zsh)"


###-----------------alias_for_zsh------------------###
alias nv="nvim"
alias icat="kitty +icat"
alias suspend="systemctl suspend"
alias py="python"
alias buscar="sudo find / -name"
# alias fastfetch="fastfetch --logo none"
# alias fastfetch="fastfetch --logo  ~/Images/.wallpaper/akira.png"
alias fastfetch="fastfetch --logo  ~/Images/.wallpaper/new_02.png"

alias ls="exa --icons --group-directories-first"
alias tree="exa --icons --tree --level=2 --group-directories-first"
alias cat="bat" 

alias QR_scan="cat /tmp/scan_screenshot.txt"
alias GPT="touch /tmp/GPT.md & tgpt --provider sky -i --log /tmp/GPT.md"

alias en="trans -b -I -t en"
alias es="trans -b -I -t es"
alias mirror="sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
# which name_program    #   buscar ubicacion de un binario
# du --max-depth=1 -h   #   ver espacio que ocupa en el disco 
# df -h                 #   ver unidades de almacenamiento y puntos de montaje
# sudo fdisk -l         #   ver unidades de almacenamiento 
# udiskie-umount /run/media/user/*  #   desmontar todas la USB
# simple-mtpfs ~/USB                #   montar android
# sudo mount -o loop dir/unidad.iso ~/USB   #   montar iso

# yt-dlp --no-playlist -t mp3 --add-metadata --embed-thumbnail --output "%(artist)s - %(title)s.%(ext)s"  "URL"
yt-dlp-d() {
    yt-dlp --no-playlist -t mp3 --add-metadata --embed-thumbnail --output "%(artist)s - %(title)s.%(ext)s" "$1"
}


###-------Definiendo_dierctorios_para_PATH---------###
# informacion bateria istalar: sudo pacman -S tlp
# informacion bateria: $ sudo tlp-stat -b
export PATH=$PATH:/home/angell/.local/bin
export PATH=$PATH:/home/angell/.eww/target/release


# /var/lib/iwd/ para ver passwrd red wiffi

rm -rf ~/ly-session.log ~/Downloads ~/Descargas ~/.zcompdump-arch-5.9 ~/.zcompdump-arch-5.9.zwc


# Created by `pipx` on 2026-02-04 01:39:20
export PATH="$PATH:/home/angell/.local/bin"
