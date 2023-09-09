#!/usr/bin/env bash
# Welcome
echo "Heya, starting install..."

if [[ $(command -v brew) == "" ]]; then
    echo "Installing Homebrew.. "
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Updating Homebrew.. "
    brew update
fi


brew install ripgrep
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install yarn
brew install fasd
brew install luarocks
brew cask install notion
brew cask install alfred
brew cask install rectangle
brew cask install slack
brew cask install spotify
brew cask install visual-studio-code

brew cleanup

echo "Done installing brew and apps, moving on..."
