alias p="print -l"

if has 'git'; then
    alias gst='git status'
fi

alias ..='cd ..'
alias lla='ls -lAF'
alias ll='ls -lF'
alias la='ls -AF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

if has 'colordiff'; then
    alias diff='colordiff -u'
    export LESS='-R'
else
    alias diff='diff -u'
fi

alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'

alias f='fzf \
    --bind="ctrl-l:execute(less {})" \
    --bind="ctrl-h:execute(ls -l {} | less)" \
    --bind="ctrl-v:execute(vim {})"'

alias zshconfig='nvim ~/.zshrc'
alias sshconfig='nvim ~/.ssh/config'

if has 'ansible-vault'; then
    alias mysec='ansible-vault edit ~/Documents/secret.md'
fi

if has 'ghq' && has 'peco'; then
    alias cdrepo='cd $(ghq list --full-path | peco)'
fi

