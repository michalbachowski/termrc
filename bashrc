# .bashrc - startup file for bash as interactive shell

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Put your local functions and aliases here
export TERM=xterm-256color
export EDITOR=/usr/bin/vim
export PSQL_EDITOR=$EDITOR

if [ -d /usr/local/bin ]; then
    export PATH=$PATH:/usr/local/bin
fi

if [ -d $HOME/Library/Python/2.7/bin ]; then
    export PATH=$PATH:$HOME/Library/Python/2.7/bin
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

if command -v brew >/dev/null 2>&1 && [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
fi

source ~/.bash_aliases

# PROMPT

GIT_PS1_SHOWDIRTYSTATE=true

function PWD {
    pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed 's/ /\//'
}

function _update_ps1() {
    export PS1="\[\e[37m\],-\[\e[0m\]\[\e[37m\][\t]\[\e[0m\]\[\e[01;33m\] \u\[\e[31m\]@\[\e[01;03;30m\]\h\[\e[0;01;32m\]:\[\e[0m\]\w\033[33m\]\$(__git_ps1)\[\033[00m\]\n\[\e[37m\]'-\[\e[0m\]\[\e[01;32m\](\[\e[01;33m\]\#\[\e[01;32m\])\[\e[01;31m\]>\[\e[0m\]\$"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

#. /Users/mbachows/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
