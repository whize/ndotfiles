#!/bin/bash

CUR_DIR=$(dirname pwd)
SRC_DIR=$(cd $(dirname $0) && pwd)
HOME_DIR=$HOME

#####
# install dotfiles
#
DOTFILES=(.curlrc .zshenv .zshrc .zsh .tmux.conf)

for file in "${DOTFILES[@]}"; do
    ln -sfnv $SRC_DIR/$file $HOME/$file
done

#####
# install zplug (zsh plugin manager)
#
if [ ! -d ~/.zplug ]; then
    cd ${HOME_DIR}
    curl -sL zplug.sh/installer | zsh
    cd ${CUR_DIR}
fi

#####
# install nvim settings
#
sh $SRC_DIR/.config/nvim/installer.sh

#####
# install tmux plugin manager
#
if [ ! -d ~/.tmux/plugins/tpm ]; then
    mkdir -p $HOME/.tmux/plugins
    git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
fi

#####
# install powerline config
#
ln -sfnv $SRC_DIR/.config/powerline $HOME/.config/powerline

