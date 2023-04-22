#!/bin/bash

# Formulae are command line tools
# ----------------------------------------------- Install the following packages
echo -e ""
read -p "Install curl               (Press y/n): " brew_curl
read -p "Install wget               (Press y/n): " brew_wget
read -p "Install grep               (Press y/n): " brew_grep
read -p "Install sed                (Press y/n): " brew_sed
read -p "Install awk                (Press y/n): " brew_awk
read -p "Install tree               (Press y/n): " brew_tree
read -p "Install fortune            (Press y/n): " brew_fortune
read -p "Install cowsay             (Press y/n): " brew_cowsay
read -p "Install neofetch           (Press y/n): " brew_neofetch
read -p "Install vim                (Press y/n): " brew_vim
read -p "Install neovim             (Press y/n): " brew_neovim
read -p "Install cmatrix            (Press y/n): " brew_cmatrix
read -p "Install tmux               (Press y/n): " brew_tmux
read -p "Install htop               (Press y/n): " brew_htop
read -p "Install exa                (Press y/n): " brew_exa
read -p "Install ncdu               (Press y/n): " brew_ncdu
read -p "Install bat                (Press y/n): " brew_bat
read -p "Install imagemagick        (Press y/n): " brew_imagemagick
read -p "Install speedtest_cli      (Press y/n): " brew_speedtest_cli
read -p "Install youtube-dl         (Press y/n): " brew_youtube_dl
read -p "Install fzf                (Press y/n): " brew_fzf
read -p "Install ripgrep            (Press y/n): " brew_ripgrep
read -p "Install ranger             (Press y/n): " brew_ranger
echo -e ""

# ----------------------------------------------- installing curl
if [ $brew_curl == y ] || [ $brew_curl == Y ]
then
    echo -e "\n\n=============================================> Installing curl \n"
    curl --version
    brew install curl
else
    echo -e "\t SKIPPING curl installation"
fi
# ----------------------------------------------- installing wget
if [ $brew_wget == y ] || [ $brew_wget == Y ]
then
    echo -e "\n\n=============================================> Installing wget \n"
    brew install wget
else
    echo -e "\t SKIPPING wget installation"
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
# ----------------------------------------------- installing tmux
if [ $brew_tmux == y ] || [ $brew_tmux == Y ]
then
    echo -e "\n\n=============================================> Installing tmux \n"
    brew install tmux
else
    echo -e "\t SKIPPING tmux installation"
fi
# ----------------------------------------------- installing htop
if [ $brew_htop == y ] || [ $brew_htop == Y ]
then
    echo -e "\n\n=============================================> Installing htop \n"
    brew install htop
else
    echo -e "\t SKIPPING htop installation"
fi
# ----------------------------------------------- installing exa
if [ $brew_exa == y ] || [ $brew_exa == Y ]
then
    echo -e "\n\n=============================================> Installing exa \n"
    brew install exa
else
    echo -e "\t SKIPPING exa installation"
fi
# ----------------------------------------------- installing ncdu
if [ $brew_ncdu == y ] || [ $brew_ncdu == Y ]
then
    echo -e "\n\n=============================================> Installing ncdu \n"
    brew install ncdu
else
    echo -e "\t SKIPPING ncdu installation"
fi
# ----------------------------------------------- installing bat
if [ $brew_bat == y ] || [ $brew_bat == Y ]
then
    echo -e "\n\n=============================================> Installing bat \n"
    brew install bat
else
    echo -e "\t SKIPPING bat installation"
fi
# ----------------------------------------------- installing imagemagick
if [ $brew_imagemagick == y ] || [ $brew_imagemagick == Y ]
then
    echo -e "\n\n=============================================> Installing imagemagick \n"
    brew install imagemagick
else
    echo -e "\t SKIPPING imagemagick installation"
fi
# ----------------------------------------------- installing speedtest_cli
if [ $brew_speedtest_cli == y ] || [ $brew_speedtest_cli == Y ]
then
    echo -e "\n\n=============================================> Installing speedtest_cli \n"
    brew install speedtest-cli
else
    echo -e "\t SKIPPING speedtest-cli installation"
fi
# ----------------------------------------------- installing youtube-dl
if [ $brew_youtube_dl == y ] || [ $brew_youtube_dl == Y ]
then
    echo -e "\n\n=============================================> Installing youtube-dl \n"
    brew install youtube-dl
else
    echo -e "\t SKIPPING youtube-dl installation"
fi
# ----------------------------------------------- installing fzf
if [ $brew_fzf == y ] || [ $brew_fzf == Y ]
then
    echo -e "\n\n=============================================> Installing fzf \n"
    brew install fzf
else
    echo -e "\t SKIPPING fzf installation"
fi
# ----------------------------------------------- installing ripgrep
if [ $brew_ripgrep == y ] || [ $brew_ripgrep == Y ]
then
    echo -e "\n\n=============================================> Installing ripgrep \n"
    brew install ripgrep
else
    echo -e "\t SKIPPING ripgrep installation"
fi
# ----------------------------------------------- installing ranger
if [ $brew_ranger == y ] || [ $brew_ranger == Y ]
then
    echo -e "\n\n=============================================> Installing ranger \n"
    brew install ranger
else
    echo -e "\t SKIPPING ranger installation"
fi
