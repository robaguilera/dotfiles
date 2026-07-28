# XDG Base Directory Standard
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"

# Redirect Zsh history & completion dump to XDG directories
[ ! -d "$XDG_DATA_HOME/zsh" ] && mkdir -p "$XDG_DATA_HOME/zsh"
[ ! -d "$XDG_CACHE_HOME/zsh" ] && mkdir -p "$XDG_CACHE_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-${HOST}-${ZSH_VERSION}"

# Dotfiles root directory
export DOTFILES="${DOTFILES:-$HOME/dotfiles}"

# PATH Configuration
export PATH="$HOME/bin:$HOME/.local/bin:$DOTFILES/bin:$PATH"

# Developer & AI Tool Binaries
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
export PATH="$HOME/.antigravity-ide/antigravity-ide/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"

# OS-specific PATH adjustments
if [[ "$OSTYPE" == "darwin"* ]]; then
  [ -d "$HOME/Library/Python/3.9/bin" ] && export PATH="$HOME/Library/Python/3.9/bin:$PATH"
  [ -d "/opt/homebrew/opt/ruby/bin" ] && export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
fi

# Path to your oh-my-zsh installation.
export ZSH="${ZSH:-$HOME/.oh-my-zsh}"

# Disable Insecure Warning
ZSH_DISABLE_COMPFIX=true

# Use case-sensitive completion.
CASE_SENSITIVE="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(vi-mode zsh-autosuggestions history-substring-search zsh-syntax-highlighting)

# Auto Suggestion Settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
bindkey '^ ' autosuggest-accept

[ -s "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh"

# Homebrew environment detection (macOS / Linuxbrew)
if command -v brew >/dev/null 2>&1; then
  eval "$(brew shellenv)"
elif [[ -x "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x "/usr/local/bin/brew" ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
elif [[ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# NVM Environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init - 2>/dev/null)" || true
  eval "$(pyenv virtualenv-init - 2>/dev/null)" || true
fi

# Railway Environment
[ -s "$HOME/.railway/env" ] && source "$HOME/.railway/env"

# AI & Dev Tools Configuration
export OLLAMA_METAL_ENABLED=1
export CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
alias cc="claude"


# Custom Dotfiles Modules
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -f "$DOTFILES/zsh/.zshrc-plus" ]] && source "$DOTFILES/zsh/.zshrc-plus"

# pnpm
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PNPM_HOME="$HOME/Library/pnpm"
else
  export PNPM_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/pnpm"
fi
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

