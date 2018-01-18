
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    rename-to:"fzf", \
    frozen:1

# zplug "motemen/ghq" \
#     as:command, \
#     from:gh-r, \
#     frozen:1

# install zsh theme (https://github.com/sindresorhus/pure#zplug)
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

zplug "zsh-users/zsh-completions"

zplug "zsh-users/zsh-syntax-highlighting", \
    defer:3

zplug "mattn/jvgrep", \
    as:command, \
    from:gh-r

zplug "zsh-users/zsh-autosuggestions"

zplug "~/.zsh", \
    from:local, \
    defer:2, \
    use:"<->_*.zsh"

