#!/bin/bash

# Dont use pre installed bash as its outdated.
brew uninstall bash

# install bash
brew install bash
# install bash auto completion
brew install bash-completion

# determine which bash got installed
which bash
# this will likely print: /usr/local/bin/bash

# add the new bash shell path to /etc/shells
sudo sh -c 'echo /usr/local/bin/bash >> /etc/shells'

# list all shells
cat /etc/shells
echo -e ""
echo -e "Currently using shell: " $SHELL
echo -e ""

# change shell to bash
chsh -s /usr/local/bin/bash
echo -e "Now using shell:       " $SHELL
bash --version

# copy bash profile and bash aliases
cp -rv configs/.bash_profile ~/.bash_profile
cp -rv configs/.bash_aliases ~/.bash_aliases

# update setings
source ~/.bash_profile



# to learn more about the basic operations of the bash shell consult the following repo.
# https://github.com/Idnan/bash-guide