# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="
    /opt/homebrew/opt/ruby/bin:
    /Users/rob/.local/bin:
    /Users/rob/Library/Python/3.9/bin:
    ~/dotfiles/bin:$PATH"

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
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(vi-mode history-substring-search fasd zsh-syntax-highlighting poetry)

source $ZSH/oh-my-zsh.sh

eval $(/opt/homebrew/bin/brew shellenv)


# My Customizations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -f ~/dotfiles/zsh/.zshrc-plus ]] && source ~/dotfiles/zsh/.zshrc-plus

