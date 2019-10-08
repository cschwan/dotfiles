if [[ $- != *i* ]]; then
    # skip the remaining commands for non-interactive shells
    return
fi

# ignore commands starting with a space, ignore repeated commands, and erase duplicated commands
HISTCONTROL=ignoreboth:erasedups

# increase history size
HISTSIZE=1000

# append to the history instead of overwriting it
shopt -s histappend

# disable control flow
stty -ixon

# older shells don't understand `tmux-256color`
alias ssh="TERM=screen-256color ssh"
