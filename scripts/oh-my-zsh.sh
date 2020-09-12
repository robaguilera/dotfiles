#!/usr/bin/env bash

echo "Installing Oh My ZSH"
# Installs .oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  # Installs Oh my ZSH with Homebrew (Mac)
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

brew install zsh-syntax-highlighting

echo "Done install Oh My Zsh, moving on..."