#!/bin/bash

# create Tools dir if it doesnt exist
[ -d ~/Tools ] || mkdir -p ~/Tools
cd ~/Tools

# install dependencies
brew bison flex gawk libffi git graphviz pkg-config python3 tcl-tk xdot bash boost-python3

# clone iverilog repo
git clone git@github.com:YosysHQ/yosys.git yosys
cd yosys

# configure the build system to use a specific compiler:
# make config-clang
make config-gcc

# build yosys
make
# install yosys (also installs ABC)
sudo make install

# execute tests (iverilog required to be built from source)
make test

# clean all
make clean clean-abc

# to uninstall
# sudo make uninstall