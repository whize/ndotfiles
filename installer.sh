#!/bin/bash

CUR_DIR=$(dirname pwd)
SRC_DIR=$(cd $(dirname $0) && pwd)
HOME_DIR=$HOME

#####
# install dotfiles
#

# DOTFILES=(.curlrc .zshenv .zshrc .zsh .tmux.conf)

# for file in "${DOTFILES[@]}"; do
#     ln -sfnv $SRC_DIR/$file $HOME/$file
# done

#####
# install nvim settings
#
sh $SRC_DIR/.config/nvim/installer.sh

