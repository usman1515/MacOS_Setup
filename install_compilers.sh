#!/bin/bash

# ----------------------------------------------- display menu
echo -e ""
read -p "Install git            (Press y/n): " apt_git
read -p "Install gcc            (Press y/n): " apt_gcc
read -p "Install make           (Press y/n): " apt_make
read -p "Install python         (Press y/n): " apt_python3
read -p "Install java           (Press y/n): " apt_openjdk
read -p "Install scala          (Press y/n): " apt_scala
read -p "Install rust           (Press y/n): " apt_rust
read -p "Install docker         (Press y/n): " apt_docker
echo -e ""

# ----------------------------------------------- installing git
if [ $apt_git == y ] || [ $apt_git == Y ]
then
    echo -e "\n\n=============================================> Installing git \n"
    brew install git
    # enter GitHub/GitLab user credentials
    read -p "Enter GitHub/GitLab user: " git_user
    read -p "Enter GitHub/GitLab user name: " git_name
    read -p "Enter GitHub/GitLab user email: " git_email
    git config --global user.user $git_user
    git config --global user.name $git_name
    git config --global user.email $git_email
    # view git config
    cat ~/.gitconfig
else
    echo -e "\t SKIPPING git installation"
fi
# ----------------------------------------------- installing gcc
if [ $apt_gcc == y ] || [ $apt_gcc == Y ]
then
    echo -e "\n\n=============================================> Installing gcc \n"
    gcc --version
    g++ --version
    # install GCC and G++
    brew install gcc
    gcc-12 --version
    g++-12 --version
    # make soft symbolic links
    cd /opt/homebrew/bin
    ln -s gcc-12 gcc  # use alias gcc='gcc-12'
    ln -s g++-12 g++  # use alias gcc='gcc-12'
    gcc --version
    g++ --version
else
    echo -e "\t SKIPPING gcc installation"
fi
# ----------------------------------------------- installing make
if [ $apt_make == y ] || [ $apt_make == Y ]
then
    echo -e "\n\n=============================================> Installing make \n"
    brew install make
else
    echo -e "\t SKIPPING make installation"
fi
# ----------------------------------------------- installing python3
if [ $apt_python3 == y ] || [ $apt_python3 == Y ]
then
    echo -e "\n\n=============================================> Installing python3 \n"
    # install python3 and pip
    brew install python@3.10
    python3 --version
    pip3 --version
    # upgrade pip
    pip install --upgrade setuptools
    pip install --upgrade pip
    # install pyenv - python version manager
    brew install pyenv
    # install virtualenv
    pip3 install virtualenv
    brew install pip-completion
else
    echo -e "\t SKIPPING python3 installation"
fi
# ----------------------------------------------- installing openjdk
if [ $apt_openjdk == y ] || [ $apt_openjdk == Y ]
then
    echo -e "\n\n=============================================> Installing openjdk \n"
    java --version
    brew search jdk
    brew install openjdk
else
    echo -e "\t SKIPPING openjdk installation"
fi
# ----------------------------------------------- installing scala
if [ $apt_scala == y ] || [ $apt_scala == Y ]
then
    echo -e "\n\n=============================================> Installing scala \n"
    scala --version
    brew install scala
    brew install sbt
else
    echo -e "\t SKIPPING scala installation"
fi
# ----------------------------------------------- installing rust
if [ $apt_rust == y ] || [ $apt_rust == Y ]
then
    echo -e "\n\n=============================================> Installing rust \n"
    rust --version
    brew install rust
else
    echo -e "\t SKIPPING rust installation"
fi
# ----------------------------------------------- installing docker
if [ $apt_docker == y ] || [ $apt_docker == Y ]
then
    echo -e "\n\n=============================================> Installing docker \n"
    docker --version
else
    echo -e "\t SKIPPING docker installation"
fi
