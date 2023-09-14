#!/bin/bash

# create Tools dir if it doesnt exist
[ -d ~/Tools ] || mkdir -p ~/Tools
cd ~/Tools

# install dependencies
brew install bison flex gcc gmake gperf autoconf

# clone iverilog repo
git clone git@github.com:steveicarus/iverilog.git iverilog
cd iverilog

# generate the configure file
sh autoconf.sh
# compile the source
./configure
make
# run a simple test befoer installation
make check
# install iverilog
sudo make install

# clean dump
make clean distclean

# uninstall iverilog
# sudo make uninstall