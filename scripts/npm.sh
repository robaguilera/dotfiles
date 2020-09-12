#!/usr/bin/env bash

echo "Installing nvm and packages"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node
npm install -g gatsby-cli
echo "Install ZSH theme"
npm install -g pure-prompt
echo "Done with npm, moving on..."
