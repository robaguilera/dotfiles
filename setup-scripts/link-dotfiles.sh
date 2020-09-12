#!/usr/bin/env bash
echo "Creating symlinks for dotfiles to $HOME"

# Symlink all dotfiles on Mac
for f in dotfiles/\.[^.]*; do
  FILE="$(basename $f)"
  ln -sf "$PWD/dotfiles/$FILE" "$HOME"
done

echo "Linked dotfiles. Please restart your shell. "