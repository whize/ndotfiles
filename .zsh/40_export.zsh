export FZF_DEFAULT_OPTS='
--extended
--ansi
--multi
--bind=ctrl-u:page-up
--bind=ctrl-d:page-down
--bind=ctrl-z:toggle-all
'

if [ -f ~/.nodebrew/nodebrew ]; then
    export PATH="$HOME"/.nodebrew/current/bin:"$PATH"
fi

if [ -d /usr/local/var/rbenv ]; then
    export RBENV_ROOT=/usr/local/var/rbenv
    export PATH=$RBENV_ROOT/bin:"$PATH"
fi

if [ -d ~/.pyenv ]; then
    export PYENV_ROOT="$HOME"/.pyenv
    export PATH=$PYENV_ROOT/bin:"$PATH"
fi

if [ -d ~/.zplug/bin ]; then
    export PATH=~/.zplug/bin:"$PATH"
fi

# token for github access
if [ -z $HOMEBREW_GITHUB_API_TOKEN ]; then
    echo "Please set HOMEBREW_GITHUB_API_TOKEN environment variable to use Homebrew."
fi


