# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="
    /Users/rob/.local/bin:
    /Users/rob/Library/Python/3.9/bin:
    ~/dotfiles/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Disable Insecure Warning
ZSH_DISABLE_COMPFIX=true

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(vi-mode zsh-history-substring-search fasd zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

eval $(/opt/homebrew/bin/brew shellenv)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# My Customizations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -f ~/dotfiles/zsh/.zshrc-plus ]] && source ~/dotfiles/zsh/.zshrc-plus

# bun completions
[ -s "/Users/rob/.bun/_bun" ] && source "/Users/rob/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/rob/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
