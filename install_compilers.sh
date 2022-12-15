#!/bin/bash

# ----------------------------------------------- installing git
if [ $apt_git == y ] || [ $apt_git == Y ]
then
    echo -e "\n\n=============================================> Installing git \n"
    brew install git
    cp -rv ./configs/.gitconfig ~/.gitconfig
else
    echo -e "\t SKIPPING git installation"
fi
# ----------------------------------------------- installing gcc
if [ $apt_gcc == y ] || [ $apt_gcc == Y ]
then
    echo -e "\n\n=============================================> Installing gcc \n"
    gcc --version
    # install GCC
    brew install gcc@12
    gcc-12 --version
    # make sofy symbolic links
    cd /opt/homebrew/bin
    # ln -s gcc-12 gcc  # use alias gcc='gcc-12'
    # ln -s g++-12 g++  # use alias gcc='gcc-12'

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
    brew install python@3.9
    python3 --version
    pip --version
    pip3 --version
    # upgrade pip
    pip install --upgrade setuptools
    pip install --upgrade pip
    # install pyenv - python version manager
    brew install pyenv
    # install virtualenv
    python3 -m pip install --user virtualenv
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
# ----------------------------------------------- installing docker
if [ $apt_docker == y ] || [ $apt_docker == Y ]
then
    echo -e "\n\n=============================================> Installing docker \n"
    docker --version
else
    echo -e "\t SKIPPING docker installation"
fi
