#!/bin/bash

cd ~

# pre-req - install command line tools for xcode
sudo xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install brew-cask-completion

# check if all is ok
brew doctor

# check brew directory
ls -a /usr/local/Homebrew/
brew