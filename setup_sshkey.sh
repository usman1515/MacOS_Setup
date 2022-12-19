#!/bin/bash

read -p "Setup SSH key for GitHub   (Press y/n):    " setup_ssh

cd ~
#----------------------------------------------- setting up SSH key
if [ $setup_ssh == y ] || [ $setup_ssh == Y ]
then
    echo -e "Setting up SSH key \n"
    read -p "Enter your email address: " email_address
    # generate a new SSH key
    ssh-keygen -t ed25519 -C "$email_address"
    # start the ssh-agent in background
    eval "$(ssh-agent -s)"
    # add SSH private key to ssh agent
    ssh-add $PWD/.ssh/id_ed25519
    # display public ssh key
    echo "Add this key in GitHub/GitLab etc"
    cat $PWD/.ssh/id_ed25519.pub
else
    echo -e "\t SKIPPING SSH key setup"
fi