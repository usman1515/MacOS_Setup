#!/bin/bash

# install bash
brew install bash
# install bash auto completion
brew install bash-completion@2

# determine which bash got installed
which bash

# add the new bash shell path to /etc/shells
sudo sh -c 'echo /opt/homebrew/bin/bash >> /etc/shells'

# list all shells
cat /etc/shells
echo -e ""
echo -e "Currently using shell: " $SHELL
echo -e ""

# install oh my posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh