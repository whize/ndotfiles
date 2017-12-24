#!/bin/bash

CUR_DIR=$(dirname pwd)
SRC_DIR=$(cd $(dirname $0) && pwd)
HOME_DIR=$HOME

#####
# create symlink
#
if [ ! -L "$HOME_DIR/.config/nvim" ]; then
    ln -sfn "$SRC_DIR" "$HOME_DIR/.config/nvim"
else
    rm $HOME/.config/nvim
    ln -sfn "$SRC_DIR" "$HOME_DIR/.config/nvim"
fi

#####
# install dein
#
sh $SRC_DIR/dein/installer.sh

