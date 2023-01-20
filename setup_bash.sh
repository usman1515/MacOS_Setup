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

# change shell to bash
chsh -s /opt/homebrew/bin/bash
echo -e "Now using shell:       " $SHELL
bash --version

# update setings
source ~/.bash_profile


# to learn more about the basic operations of the bash shell consult the following repo.
# https://github.com/Idnan/bash-guide