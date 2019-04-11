#!/usr/bin/env bash

rm -rf ./dist
mkdir ./dist
cd ./scripts
zip ../dist/scripts.zip *
cd

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Curl"
brew install curl

echo "Installing NodeJs & Yarn"
brew install yarn

echo "Installing Node Version Manager (NVM)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

