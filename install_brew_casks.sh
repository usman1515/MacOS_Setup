#!/bin/bash

# Casks are actual GUI based tools that we use
# ----------------------------------------------- Install the following packages
echo -e ""
read -p "Install firefox            (Press y/n): " brew_firefox
read -p "Install rectangle          (Press y/n): " brew_rectangle
read -p "Install alttab             (Press y/n): " brew_alttab
read -p "Install alfred             (Press y/n): " brew_alfred
read -p "Install raycast            (Press y/n): " brew_raycast
read -p "Install slack              (Press y/n): " brew_slack
read -p "Install keka               (Press y/n): " brew_keka
read -p "Install vlc                (Press y/n): " brew_vlc
read -p "Install vscode             (Press y/n): " brew_vscode
read -p "Install sublimetext        (Press y/n): " brew_sublimetext
read -p "Install qbittorrent        (Press y/n): " brew_qbittorrent
read -p "Install steam              (Press y/n): " brew_steam
read -p "Install epicgames          (Press y/n): " brew_epicgames
read -p "Install spotify            (Press y/n): " brew_spotify
read -p "Install gtkwave            (Press y/n): " brew_gtkwave
echo -e ""

# ----------------------------------------------- installing firefox
if [ $brew_firefox == y ] || [ $brew_firefox == Y ]
then
    echo -e "\n\n=============================================> Installing firefox \n"
    brew install --cask firefox
else
    echo -e "\t SKIPPING firefox installation"
fi
# ----------------------------------------------- installing rectangle
if [ $brew_rectangle == y ] || [ $brew_rectangle == Y ]
then
    echo -e "\n\n=============================================> Installing rectangle \n"
    brew install --cask rectangle
else
    echo -e "\t SKIPPING rectangle installation"
fi
# ----------------------------------------------- installing alt-tab
if [ $brew_alttab == y ] || [ $brew_alttab == Y ]
then
    echo -e "\n\n=============================================> Installing alt-tab \n"
    brew install --cask alt-tab
else
    echo -e "\t SKIPPING alt-tab installation"
fi
# ----------------------------------------------- installing alfred
if [ $brew_alfred == y ] || [ $brew_alfred == Y ]
then
    echo -e "\n\n=============================================> Installing alfred \n"
    brew install --cask alfred
else
    echo -e "\t SKIPPING alfred installation"
fi
# ----------------------------------------------- installing raycast
if [ $brew_raycast == y ] || [ $brew_raycast == Y ]
then
    echo -e "\n\n=============================================> Installing raycast \n"
    brew install --cask raycast
else
    echo -e "\t SKIPPING raycast installation"
fi
# ----------------------------------------------- installing slack
if [ $brew_slack == y ] || [ $brew_slack == Y ]
then
    echo -e "\n\n=============================================> Installing slack \n"
    brew install --cask slack
else
    echo -e "\t SKIPPING slack installation"
fi
# ----------------------------------------------- installing keka
if [ $brew_keka == y ] || [ $brew_keka == Y ]
then
    echo -e "\n\n=============================================> Installing keka \n"
    brew install --cask keka
else
    echo -e "\t SKIPPING keka installation"
fi
# ----------------------------------------------- installing vlc
if [ $brew_vlc == y ] || [ $brew_vlc == Y ]
then
    echo -e "\n\n=============================================> Installing vlc \n"
    brew install --cask vlc
else
    echo -e "\t SKIPPING vlc installation"
fi
# ----------------------------------------------- installing vscode
if [ $brew_vscode == y ] || [ $brew_vscode == Y ]
then
    echo -e "\n\n=============================================> Installing vscode \n"
    brew install --cask visual-studio-code
    echo -e "\n\n=============================================> Installing vscode extensions \n"
    source install_vscode_extensions.sh
else
    echo -e "\t SKIPPING vscode installation"
fi
# ----------------------------------------------- installing sublime-text
if [ $brew_sublimetext == y ] || [ $brew_sublimetext == Y ]
then
    echo -e "\n\n=============================================> Installing sublime-text \n"
    brew install --cask sublime-text
else
    echo -e "\t SKIPPING sublime-text installation"
fi
# ----------------------------------------------- installing qbittorrent
if [ $brew_qbittorrent == y ] || [ $brew_qbittorrent == Y ]
then
    echo -e "\n\n=============================================> Installing qbittorrent \n"
    brew install --cask qbittorrent
else
    echo -e "\t SKIPPING qbittorrent installation"
fi
# ----------------------------------------------- installing steam
if [ $brew_steam == y ] || [ $brew_steam == Y ]
then
    echo -e "\n\n=============================================> Installing steam \n"
    brew install --cask steam
else
    echo -e "\t SKIPPING steam installation"
fi
# ----------------------------------------------- installing epic-games
if [ $brew_epicgames == y ] || [ $brew_epicgames == Y ]
then
    echo -e "\n\n=============================================> Installing epic-games \n"
    brew install --cask epic-games
else
    echo -e "\t SKIPPING epic-games installation"
fi
# ----------------------------------------------- installing spotify
if [ $brew_spotify == y ] || [ $brew_spotify == Y ]
then
    echo -e "\n\n=============================================> Installing spotify \n"
    brew install --cask spotify
else
    echo -e "\t SKIPPING spotify installation"
fi
# ----------------------------------------------- installing gtkwave
if [ $brew_gtkwave == y ] || [ $brew_gtkwave == Y ]
then
    echo -e "\n\n=============================================> Installing gtkwave \n"
    brew install --cask gtkwave
else
    echo -e "\t SKIPPING gtkwave installation"
fi
