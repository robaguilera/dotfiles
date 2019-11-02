# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.config/yarn/global/node_modules/bin:.rbenv/bin:/opt/aplos/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_EMBER_SHOW=false
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode history-substring-search fasd)

source $ZSH/oh-my-zsh.sh

# My Customizations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -f ~/dotfiles/.zshrc-plus ]] && source ~/dotfiles/.zshrc-plus
[[ -f ~/.workAliases ]] && source ~/.workAliases

# Load NVM when needed - speeds up inital load time of ZSH
# https://github.com/nvm-sh/nvm/issues/539#issuecomment-245791291
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm
alias node='unalias node ; unalias npm ; nvm use default ; node $@'
alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'

source /Users/robertaguilera/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(rbenv init -)"

