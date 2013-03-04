#!/bin/bash
if [ -f ~/.bashrc ]; then
    rm ~/.bashrc
fi
ln -s ~/.termrc/bashrc ~/.bashrc

if [ -f ~/.bash_profile ]; then
    rm ~/.bash_profile
fi
ln -s ~/.termrc/bash_profile ~/.bash_profile

if [ -f ~/.bash_aliases ]; then
    rm ~/.bash_aliases
fi
ln -s ~/.termrc/bash_aliases ~/.bash_aliases

if [ -f ~/.screenrc ]; then
    rm ~/.screenrc
fi
ln -s ~/.termrc/screenrc ~/.screenrc

if [ -f ~/.tmux.conf ]; then
    rm ~/.tmux.conf
fi
ln -s ~/.termrc/tmux.conf ~/.tmux.conf
