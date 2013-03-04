# .bashrc - startup file for bash as interactive shell

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Put your local functions and aliases here
export TERM=xterm-256color
export PSQL_EDITOR=/usr/bin/vim

GIT_PS1_SHOWDIRTYSTATE=true

function PWD {
    pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed 's/ /\//'
}

source /etc/bash_completion.d/git
source ~/.bash_profile
source ~/.bash_aliases

export PS1="\[\e[37m\],-\[\e[0m\]\[\e[37m\][\t]\[\e[0m\]\[\e[01;33m\] \u\[\e[31m\]@\[\e[01;02;32m\]\h\[\e[0;01;32m\]:\[\e[0m\]\w\033[33m\]\$(__git_ps1)\[\033[00m\]\n\[\e[37m\]'-\[\e[0m\]\[\e[01;32m\](\[\e[01;33m\]\#\[\e[01;32m\])\[\e[01;31m\]>\[\e[0m\]\$"

