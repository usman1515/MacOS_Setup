#!/bin/bash

# list all installed extensions
echo -e "\t Listing all currently installed extensions"
code --list-extensions

# python
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension kevinrose.vsc-python-indent
code --install-extension njpwerner.autodocstring
code --install-extension oderwat.indent-rainbow

# c/c++
code --install-extension ms-vscode.cpptools
code --install-extension jeff-hykin.better-cpp-syntax

# verilog
code --install-extension mshr-h.VerilogHDL
code --install-extension mshr-h.SystemVerilog

# docker
code --install-extension ms-azuretools.vscode-docker

# git
code --install-extension mhutchie.git-graph

# markdown
code --install-extension yzhang.markdown-all-in-one
code --install-extension bierner.markdown-preview-github-styles
code --install-extension bierner.markdown-shiki

# themes
code --install-extension pkief.material-icon-theme
code --install-extension fabiospampinato.vscode-monokai-night
code --install-extension solarliner.linux-themes

# beautiful code
code --install-extension esbenp.prettier-vscode
# code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension aaron-bond.better-comments
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension streetsidesoftware.code-spell-checker

# others
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension redhat.vscode-xml
code --install-extension redhat.vscode-yaml

# list all installed extensions
echo -e "\t Listing all currently installed extensions"
code --list-extensions
