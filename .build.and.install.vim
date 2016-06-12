#!/bin/bash

cd ~/code/vim/src
make distclean
./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp
make
sudo make install