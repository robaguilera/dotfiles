#!/usr/bin/env bash

installpip() { \
  echo "Installing pip..."
  sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python3 get-pip.py
  rm get-pip.py
}

installpynvim() { \
  echo "Installing pynvim..."
  pip3 install pynvim --user
}

installcocextensions() { \
  # Install extensions
  mkdir -p ~/.config/coc/extensions
  cd ~/.config/coc/extensions
  [ ! -f package.json ] && echo '{"dependencies":{}}'> package.json
  # Change extension names to the extensions you need
  sudo npm install coc-explorer coc-snippets coc-json coc-actions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  cd ~/.config/setup-scripts
}

moveoldnvim() { \
  echo "Moving your config to nvim.old"
  mv $HOME/.config/nvim $HOME/.config/nvim.old
}

moveoldcoc() { \
  echo "Moving your coc to coc.old"
  mv $HOME/.config/coc $HOME/.config/coc.old
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

asktoinstallpip() { \
  # echo "pip not found"
  # echo -n "Would you like to install pip now (y/n)? "
  # read answer
  # [ "$answer" != "${answer#[Yy]}" ] && installpip
  echo "Please install pip3 before continuing with install"
  exit
}

installNeovim() {
  echo "Installing neovim"
  brew install --HEAD neovim
}


pipinstallueberzug() { \
  which pip3 > /dev/null && pip3 install ueberzug || echo "Not installing ueberzug pip not found"
}

# install pip
which pip3 > /dev/null && echo "pip installed, moving on..." || asktoinstallpip

# install node and neovim support
which node > /dev/null && echo "node installed, moving on..." || asktoinstallnode

# install pynvim
pip3 list | grep pynvim > /dev/null && echo "pynvim installed, moving on..." || installpynvim


# move old nvim directory if it exists
[ -d "$HOME/.config/nvim" ] && moveoldnvim

# move old nvim directory if it exists
[ -d "$HOME/.config/coc" ] && moveoldcoc

configureNeovim
#installcocextensions

echo "I recommend you also install and activate a font from here: https://github.com/ryanoasis/nerd-fonts"

echo "I also recommend you add 'set preview_images_method ueberzug' to ~/.config/ranger/rc.conf"
