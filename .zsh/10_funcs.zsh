has.command() {
    (( $+commands[${1:?too few artument}] ))
    return $status
}

has.function() {
    (( $+functions[${1:?too few artument}] ))
    return $status
}

has.builtin() {
    (( $+builtins[${1:?too few artument}] ))
    return $status
}

has.alias() {
    (( $+aliases[${1:?too few artument}] ))
    return $status
}

has.galias() {
    (( $+galiases[${1:?too few artument}] ))
    return $status
}

has() {
    has.function "$1" || \
        has.command "$1" || \
        has.builtin "$1" || \
        has.alias "$1" || \
        has.galias "$1"

    return $status
}

