# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# anaconda
export PATH="/usr/local/sbin:$HOME/Public/anaconda3/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


########  ##       ##     ##  ######   #### ##    ##  ######
##     ## ##       ##     ## ##    ##   ##  ###   ## ##    ##
##     ## ##       ##     ## ##         ##  ####  ## ##
########  ##       ##     ## ##   ####  ##  ## ## ##  ######
##        ##       ##     ## ##    ##   ##  ##  ####       ##
##        ##       ##     ## ##    ##   ##  ##   ### ##    ##
##        ########  #######   ######   #### ##    ##  ######
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract zsh-syntax-highlighting zsh-autosuggestions colored-man-pages virtualenv-autodetect)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


   ###    ##       ####    ###     ######
  ## ##   ##        ##    ## ##   ##    ##
 ##   ##  ##        ##   ##   ##  ##
##     ## ##        ##  ##     ##  ######
######### ##        ##  #########       ##
##     ## ##        ##  ##     ## ##    ##
##     ## ######## #### ##     ##  ######
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias ll='ls -al'
alias sl='ls'
alias vi='vim'
alias pingc='ping -c 5'
alias randompass="openssl rand -base64 20"
# zshrc
alias voh="test -f ~/.zshrc && vim ~/.zshrc || { echo 'File not found!' && return 1 }"
alias soh="echo 'reload zshrc...' && source ~/.zshrc && return 0 || return 1"
# Python
alias www2="python -m SimpleHTTPServer 8989"
alias www3="python3 -m http.server"
alias prp="pipenv run python"
# Brew
alias brs='brew search'
alias bri='brew install'
alias bci='brew cask install'
alias bal='brew list && brew cask list'
# Git
alias gitlog="git log --oneline --decorate --graph --all"
alias gitmerge="git merge --no-ff"


# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]; then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]; then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]; then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi


##     ##  ######   ######
###   ### ##    ## ##    ##
#### #### ##       ##
## ### ##  ######  ##   ####
##     ##       ## ##    ##
##     ## ##    ## ##    ##
##     ##  ######   ######
text="Let's Code"
_COLUMNS=$(tput cols)
_MESSAGE=" ${text} "
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")

echo " "
echo -e "${spaces}\033[44;37;5m ${text} \033[0m"
echo " "


########  ##    ## ######## ##     ##  #######  ##    ##
##     ##  ##  ##     ##    ##     ## ##     ## ###   ##
##     ##   ####      ##    ##     ## ##     ## ####  ##
########     ##       ##    ######### ##     ## ## ## ##
##           ##       ##    ##     ## ##     ## ##  ####
##           ##       ##    ##     ## ##     ## ##   ###
##           ##       ##    ##     ##  #######  ##    ##
export PYTHONDONTWRITEBYTECODE=1
export PIPENV_VENV_IN_PROJECT=1
export PIPENV_VERBOSITY=-1
eval "$(pipenv --completion)"

