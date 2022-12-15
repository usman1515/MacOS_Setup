#!/bin/bash

# show top level of repo
MACOS_SETUP_ROOT=$(git rev-parse --show-toplevel)
clear

# ----------------------------------------------- display menu
echo -e ""
echo -e "Project Dir: ${MACOS_SETUP_ROOT}"
echo -e "\n\n"

echo -e "Install Homebrew           (Press 1)"
echo -e "Install iTerm2             (Press 2)"
echo -e "Setup BASH Shell           (Press 3)"


echo -e "Install homebrew packages  (Press 3)"
echo -e "Setup SSH key for GitHub   (Press 2)"

echo -e "Install iVerilog           (Press 9)"
echo -e "Install Yosys              (Press 10)"

echo -e ""
read -p "Enter option (Press 1-8):  " option

# ----------------------------------------------- selection


# ----------------------------------------------- install homebrew
if [ $option == 1 ]
then
    echo -e "\n\n=============================================> Installing Homebrew \n"
    sudo bash ./install_homebrew.sh
    cd ${MACOS_SETUP_ROOT}
else
    echo -e "\t SKIPPING Homebrew installation"
fi
# ----------------------------------------------- install and setup terminal
if [ $option == 2 ]
then
    echo -e "\n\n=============================================> Installing iTerm2 \n"
    brew install iterm2
    source ./setup_iterm2.sh
else
    echo -e "\t SKIPPING iTerm2 installation"
fi
# ----------------------------------------------- setup bash shell
if [ $option == 3 ]
then
    echo -e "\n\n=============================================> Setting BASH Shell \n"
    brew uninstall bash
    source ./setup_bash.sh
else
    echo -e "\t SKIPPING BASH Shell setup"
fi
# ----------------------------------------------- install compilers and toolchains
if [ $option == 4 ]
then
    echo -e "\n\n=============================================> Installing compilers and toolchains \n"
    source ./install_compilers.sh
else
    echo -e "\t SKIPPING compilers and toolchains installation"
fi
# ----------------------------------------------- set up SSH key
if [ $option == 5 ]
then
    echo -e "\n\n=============================================> Setting up SSH Key \n"
    source ./setup_ssh.sh
else
    echo -e "\t SKIPPING setting up SSH key"
fi
# ----------------------------------------------- install brew formulae
if [ $option == 6 ]
then
    echo -e "\n\n=============================================> Installing brew formulae \n"
    source ./install_brew_formulae.sh
else
    echo -e "\t SKIPPING brew formulae installation"
fi
# ----------------------------------------------- install brew casks
if [ $option == 7 ]
then
    echo -e "\n\n=============================================> Installing brew casks \n"
    source ./install_brew_casks.sh
else
    echo -e "\t SKIPPING brew casks installation"
fi
