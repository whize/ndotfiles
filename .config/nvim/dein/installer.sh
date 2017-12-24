#!/bin/bash

CUR_DIR=$(pwd)
SRC_DIR=$(dirname $0)

if [ ! -d "$SRC_DIR/repos" ]; then
    echo "install dein"
    curl -fsSL https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh |sh -s -- ${SRC_DIR}
fi

function installMsgpack() {
    git clone git@github.com:msgpack/msgpack-php.git /tmp/msgpack-php
    cd /tmp/msgpack-php
    phpize
    ./configure && make && make install
    echo "extension=msgpack.so" > $(phpenv prefix)/etc/conf.d/msgpack.ini
}

##
# install Msgpack for PHP
#
php -i |grep msgpack > /dev/null 2>&1 || installMsgpack


##
# Install GNU global if it is not installed.
#
if ! command -v global > /dev/null 2>&1; then
    echo "Install GNU global"

    ##
    # Check if Homebrew has been installed.
    #
    command -v brew > /dev/null 2>&1 || { echo >&2 "Please install Homebrew (see https://brew.sh/). Aborting"; exit 1; }

    brew install global
fi


