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

# always use vim
alias vi=vim

# use colour when possible
alias ls="ls --color=auto"
alias grep="grep --color=auto"

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
