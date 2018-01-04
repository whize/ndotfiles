
umask 022
limit coredumpsize 0
bindkey -e

# Exit if called from vim
[[ -n $VIMRUNTIME ]] && return

if [[ -f ~/.zplug/init.zsh ]]; then
    export ZPLUG_LOADFILE="$HOME/.zsh/zplug.zsh"
    source ~/src/github.com/zplug/zplug/init.zsh

    if ! zplug check --verbose; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        else
            echo
        fi
    fi
    zplug load --verbose
fi

export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
