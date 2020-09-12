#!/usr/bin/env bash

# Install oh-my-zsh
source scripts/oh-my-zsh.sh

# Link Dotfiles
source scripts/link-dotfiles.sh

# Install apps and binaries with Brew
source scripts/brew.sh

# Install nvm and node packages
source scripts/npm.sh

# Install neovim
source scripts/vim.sh

# Setup Mac
source scripts/macos.sh
