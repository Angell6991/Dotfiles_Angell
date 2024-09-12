#####################################################
###-----------------zshrc_config------------------###
#####################################################

###--------------export_oh_my_zsh-----------------###
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="intheloop"  #(jaischeema,half-life,darkblood,sorin,intheloop,nicoulaj,refined,kardan)


###------------export_theme_for_bat---------------###
# export BAT_THEME="Nord"
export BAT_THEME="OneHalfDark"


###--------------export_EXA_COLORS----------------###
export EXA_COLORS="ur=1;36:uw=1;37:ux=1;35:gr=0;36:gw=0;37:gx=0;35:tr=1;36:tw=1;37:tx=1;35:sn=1;36:uu=1;35:da=0;37"
export LS_COLORS="$LS_COLORS:*.c=1;38:*.*.cpp=1;38:*.py=1;38:*.tex=0;35:*.txt=0;38:*.dat=0;38:*.md=0;38:*"


###--------------plugins_oh_my_zsh----------------###
plugins=(
        git
        # fast-syntax-highlighting
        zsh-autosuggestions
        web-search
        fast-syntax-highlighting
        )
source $ZSH/oh-my-zsh.sh        #Iniciar_oh_my_zsh
eval "$(starship init zsh)"     #Iniciar_Starship


###----------------alias_for_zsh------------------###
alias nv="nvim"
alias icat="kitty +icat"
alias suspend="systemctl suspend"
alias py="python"
alias buscar="sudo find / -name"
alias neofetch="neofetch --backend kitty --source /home/angell/Imágenes/.wallpaper/pngwing_001.png"

alias ls="exa --icons --group-directories-first"
alias tree="exa --icons --tree --level=2 --group-directories-first"
alias cat="bat" 


###------Definiendo_dierctorios_para_PATH---------###
# informacion bateria istalar: sudo pacman -S tlp
# informacion bateria: $ sudo tlp-stat -b
export PATH=$PATH:/home/angell/.local/bin
export PATH=$PATH:/home/angell/.programs
export PATH=$PATH:/home/angell/.eww/target/release


