#!/usr/bin/env bash

echo "Installing Oh My ZSH"
# Installs .oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  # Installs Oh my ZSH with Homebrew (Mac)
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install zsh-syntax-highlighting

echo "Done install Oh My Zsh, moving on..."