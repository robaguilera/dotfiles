# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
nvm install stable

# brew installs
brew install jesseduffield/lazygit/lazygit
brew install coreutils
brew install gnu-sed
brew install clojure/tools/clojure
brew install leiningen
brew install neovim
brew install yarn
brew install fzf
brew install ripgrep
brew install zsh-syntax-highlighting
brew install fasd
brew install yarn
brew cleanup
