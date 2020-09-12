#!/usr/bin/env bash
# Welcome
echo "Heya, starting install..."

if [[ $(command -v brew) == "" ]]; then 
    echo "Installing Homebrew.. "
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
    echo "Updating Homebrew.. "
    brew update
fi


brew install ripgrep
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install ranger 
brew install yarn
brew install fasd 
brew install imagemagick
brew cask install notion
brew cask install alfred
brew cask install dropbox
brew cask install iterm2
brew cask install slack
brew cask install spotify
brew cask install homebrew/cask-versions/firefox-nightly # Nightly
brew cask install google-chrome #Chrome
brew cask install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew cask install visual-studio-code

brew cleanup

echo "Done installing brew and apps, moving on..."
