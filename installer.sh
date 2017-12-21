#!/bin/bash

CUR_DIR=$(dirname pwd)
SRC_DIR=$(cd $(dirname $0) && pwd)
HOME_DIR=$HOME

#####
# install dotfiles
#

if [ ! -L "$HOME_DIR/.config/nvim" ]; then
    ln -sfn "$SRC_DIR/.config/nvim" "$HOME_DIR/.config/nvim"
else
    rm $HOME/.config/nvim
    ln -sfn "$SRC_DIR/.config/nvim" "$HOME_DIR/.config/nvim"
fi

sh $HOME_DIR/.config/nvim/dein/installer.sh

