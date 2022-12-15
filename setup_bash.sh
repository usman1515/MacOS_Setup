#!/bin/bash

# Dont install BASH shell using homebrew
brew uninstall bash

# list all shells
cat /etc/shells
echo -e ""
echo -e "Currently using shell: " $SHELL
echo -e ""

# change shell to bash
chsh -s /bin/bash
echo -e "Now using shell:       " $SHELL
bash --version

# https://sourabhbajaj.com/mac-setup/BashCompletion/