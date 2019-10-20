# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.rbenv/bin:/opt/aplos/bin:/usr/local/sbin/bin:$PATH

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
export NVM_LAZY_LOAD=true
NVM_SYMLINK_CURRENT=true
plugins=(git vi-mode history-substring-search fasd)

source $ZSH/oh-my-zsh.sh

# My Customizations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -f ~/dotfiles/.zshrc-plus ]] && source ~/dotfiles/.zshrc-plus
[[ -f ~/.workAliases ]] && source ~/.workAliases
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

source /Users/robertaguilera/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(rbenv init -)"

