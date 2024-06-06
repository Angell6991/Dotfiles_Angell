# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# export EXA_COLORS="\
# ur=1;31:\    # Permisos de lectura para el propietario            
# uw=1;36:\    # Permisos de escritura para el propietario 
# ux=1;36:\    # Permisos de ejecución para el propietario 
# gr=1;36:\    # Permisos de lectura para el grupo                  
# gw=1;36:\    # Permisos de escritura para el grupo 
# gx=1;36:\    # Permisos de ejecución para el grupo 
# tr=1;36:\    # Permisos de lectura para otros
# tw=1;36:\    # Permisos de escritura para otros 
# tx=1;36:\    # Permisos de ejecución para otros 


# export EXA_COLORS="\
# sn=1;36:\    # Columna Zise
# uu=1;35:\    # Columna User
# da=0;37:\    # Columna Data modified
# "

export EXA_COLORS="ur=1;36:uw=1;37:ux=1;35:gr=0;36:gw=0;37:gx=0;35:tr=1;36:tw=1;37:tx=1;35:sn=1;36:uu=1;35:da=0;37"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="intheloop"  #(jaischeema,half-life,darkblood,sorin,intheloop,nicoulaj,refined,kardan)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	# fast-syntax-highlighting
	zsh-autosuggestions
	web-search
    fast-syntax-highlighting)

# source ~/.path/to/fsh/fast-syntax-highlighting.plugin.zsh

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias icat="kitty +kitten icat" 
alias nv="nvim"
alias icat="kitty +icat"
alias suspend="systemctl suspend"
alias py="python"
alias buscar="sudo find / -name"
alias neofetch="neofetch --backend kitty --source /home/angell/Imágenes/.wallpaper/hello-my-fascination-with-nature-and-the-aesthetics-of-v0-6gaubmc5c7ea1.jpg"
alias ls="exa --icons"
alias tree="exa --tree --level=2"

# informacion bateria istalar: sudo pacman -S tlp
# informacion bateria: $ sudo tlp-stat -b

#Iniciar_Starship
eval "$(starship init zsh)"

# export PATH=~/.Install_packages_python:$PATH
export PATH=$PATH:/home/angell/.local/bin
export PATH=$PATH:/home/angell/.programs
export PATH=$PATH:/home/angell/.eww/target/release

