#!/usr/bin/env bash

moveoldnvim() { \
  echo "Moving your config to nvim.old"
  mv $HOME/.config/nvim $HOME/.config/nvim.old
}

configureNeovim() { \
  echo "linking your neovim init"
  mkdir $HOME/.config/nvim
  touch $HOME/.config/nvim/init.vim
  ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim"
}

asktoinstallnode() { \
  echo "node not found"
  echo -n "Would you like to install node now (y/n)? "
  read answer
  [ "$answer" != "${answer#[Yy]}" ] && installnode && installcocextensions
}

installNeovim() {
  echo "Installing neovim"
  brew install --HEAD neovim
}

# install node and neovim support
which node > /dev/null && echo "node installed, moving on..." || asktoinstallnode

installNeovim

# move old nvim directory if it exists
[ -d "$HOME/.config/nvim" ] && moveoldnvim

# move old nvim directory if it exists
[ -d "$HOME/.config/coc" ] && moveoldcoc

configureNeovim

echo "I recommend you also install and activate a font from here: https://github.com/ryanoasis/nerd-fonts"

echo "I also recommend you add 'set preview_images_method ueberzug' to ~/.config/ranger/rc.conf"
