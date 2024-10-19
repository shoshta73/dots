#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[\e[31m\]\#\[\e[32m\]:\u\[\e[34m\]@\h: \[\e[33m\]\w\[\e[34m\]\$ \[\e[0m\]"

alias ll='ls -AlF'

export PATH="$HOME/bin:$PATH"

git-ssh () {
	eval $(ssh-agent -s)
	ssh-add $HOME/.ssh/GitHostAuth
}

alias clear="clear -x"
alias c="clear -x"
alias q="exit"

export NODE_HOME="$HOME/Software/node/node-v23.0.0-linux-x64"
export PATH="$NODE_HOME/bin:$PATH"
. "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="/home/borna/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/go/bin:$PATH"
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
