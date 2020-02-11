# Path to your oh-my-zsh installation.
export ZSH="/Users/svyatoslavik/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "powerlevel9k/powerlevel9k" )

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

EDITOR='code'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

plugins=(git)

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/svyatoslavik/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/svyatoslavik/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/svyatoslavik/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/svyatoslavik/google-cloud-sdk/completion.zsh.inc'; fi

# Path directories

path+=~/bin
path+=/usr/local/Cellar/openvpn/2.4.8/sbin

#

# ssh-add ~/.ssh/id_rsa
# ssh-add ~/.ssh/id_rsa_melden19

alias vpn='cd ~/vpn/; cat password.txt | pbcopy; sudo openvpn --config cf-vpn-client.ovpn;'



mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
