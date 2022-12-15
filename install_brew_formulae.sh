#!/bin/bash

# Formulae are command line tools

#!/bin/bash

# ----------------------------------------------- Install the following packages
read -p "Install tree               (Press y/n):    " brew_tree



# ----------------------------------------------- installing curl
if [ $brew_curl == y ] || [ $brew_curl == Y ]
then
    echo -e "\n\n=============================================> Installing curl \n"
    curl --version
    brew install curl
else
    echo -e "\t SKIPPING curl installation"
fi
# ----------------------------------------------- installing grep
if [ $brew_grep == y ] || [ $brew_grep == Y ]
then
    echo -e "\n\n=============================================> Installing grep \n"
    grep --version
    brew install grep
else
    echo -e "\t SKIPPING grep installation"
fi
# ----------------------------------------------- installing sed
if [ $brew_sed == y ] || [ $brew_sed == Y ]
then
    echo -e "\n\n=============================================> Installing sed \n"
    gnu-sed --version
    brew install gnu-sed
else
    echo -e "\t SKIPPING sed installation"
fi
# ----------------------------------------------- installing awk
if [ $brew_awk == y ] || [ $brew_awk == Y ]
then
    echo -e "\n\n=============================================> Installing awk \n"
    awk --version
    brew install awk
else
    echo -e "\t SKIPPING awk installation"
fi
# ----------------------------------------------- installing tree
if [ $brew_tree == y ] || [ $brew_tree == Y ]
then
    echo -e "\n\n=============================================> Installing tree \n"
    brew install tree
else
    echo -e "\t SKIPPING tree installation"
fi
# ----------------------------------------------- installing fortune
if [ $brew_fortune == y ] || [ $brew_fortune == Y ]
then
    echo -e "\n\n=============================================> Installing fortune \n"
    brew install fortune
else
    echo -e "\t SKIPPING fortune installation"
fi
# ----------------------------------------------- installing cowsay
if [ $brew_cowsay == y ] || [ $brew_cowsay == Y ]
then
    echo -e "\n\n=============================================> Installing cowsay \n"
    brew install cowsay
else
    echo -e "\t SKIPPING cowsay installation"
fi
# ----------------------------------------------- installing neofetch
if [ $brew_neofetch == y ] || [ $brew_neofetch == Y ]
then
    echo -e "\n\n=============================================> Installing neofetch \n"
    brew install neofetch
else
    echo -e "\t SKIPPING neofetch installation"
fi
# ----------------------------------------------- installing vim
if [ $brew_vim == y ] || [ $brew_vim == Y ]
then
    echo -e "\n\n=============================================> Installing vim \n"
    brew install vim
else
    echo -e "\t SKIPPING vim installation"
fi
# ----------------------------------------------- installing neovim
if [ $brew_neovim == y ] || [ $brew_neovim == Y ]
then
    echo -e "\n\n=============================================> Installing neovim \n"
    brew install neovim
else
    echo -e "\t SKIPPING neovim installation"
fi
# ----------------------------------------------- installing cmatrix
if [ $brew_cmatrix == y ] || [ $brew_cmatrix == Y ]
then
    echo -e "\n\n=============================================> Installing cmatrix \n"
    brew install cmatrix
else
    echo -e "\t SKIPPING cmatrix installation"
fi
