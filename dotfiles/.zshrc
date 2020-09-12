export PATH="/usr/local/bin:/usr/local/sbin:~/dotfiles/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Disable Insecure Warning
ZSH_DISABLE_COMPFIX=true

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# SPACESHIP_PACKAGE_SHOW=false
# SPACESHIP_TIME_SHOW=true
# SPACESHIP_EMBER_SHOW=false
# ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git vi-mode history-substring-search fasd)

source $ZSH/oh-my-zsh.sh

# My Customizations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -f ~/dotfiles/zsh/.zshrc-plus ]] && source ~/dotfiles/zsh/.zshrc-plus
[[ -f ~/.workAliases ]] && source ~/.workAliases

# Load NVM when needed - speeds up inital load time of ZSH
# https://github.com/nvm-sh/nvm/issues/539#issuecomment-245791291
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
