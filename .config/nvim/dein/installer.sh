#!/bin/bash

CUR_DIR=$(dirname $0)

curl -fsSL https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh |sh -s -- ${CUR_DIR}

