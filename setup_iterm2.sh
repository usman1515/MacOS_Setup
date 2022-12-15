#!/bin/bash

# Download fonts from here: https://www.nerdfonts.com/font-downloads
# Preview fonts here: https://www.programmingfonts.org/
# Install fonts using brew: https://corgibytes.com/blog/2020/01/29/install-fonts-on-your-mac-from-the-command-line-with-homebrew/
# Install Oh My Posh: https://ohmyposh.dev/docs/installation/macos


# lets you install extra objects that are not included in the built-in list of objects
brew tap homebrew/cask-fonts

# list all fonts you can install this way
brew search "/font-/"

# install fonts
brew cask install font-anonymous-pro
brew cask install font-anonymice-nerd-font
brew cask install font-caskaydia-cove-nerd-font
brew cask install font-fira-code-nerd-font
brew cask install font-iosevka-nerd-font
brew cask install font-inconsolata-nerd-font
brew cask install font-inconsolata-lgc-nerd-font
brew cask install font-inconsolata-go-nerd-font
brew cask install font-jetbrains-mono-nerd-font
brew cask install font-overpass-nerd-font
brew cask install font-roboto-mono-nerd-font

# install oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# get shell info
oh-my-posh get shell
exec bash
exec zsh
