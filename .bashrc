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
#alias ssh="TERM=screen-256color ssh"

# always use vim
alias vi=vim

# use colour when possible
alias ls="ls --color=auto"
alias grep="grep --color=auto"

PS1="\[\033[01;32m\]\u@\h\[\033[0m\] \[\033[01;34m\]\W\[\033[0m\] \[\033[01;35m\]\$\[\033[0m\] "

export GPG_TTY=$(tty)

function pre_ssh() {
    SSH_AUTH_SOCK=/tmp/ssh-agent.${HOSTNAME}

    if [[ -S ${SSH_AUTH_SOCK} ]]; then
        export SSH_AUTH_SOCK
    else
        eval $(ssh-agent -a "${SSH_AUTH_SOCK}" 2>/dev/null)
    fi
}

alias git='pre_ssh; \git'
alias scp='pre_ssh; \scp'
alias ssh='pre_ssh; \ssh'
alias ssh-add='pre_ssh; \ssh-add'
alias ssh-copy-id='pre_ssh; \ssh-copy-id'
