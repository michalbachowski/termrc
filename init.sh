#!/bin/bash
rm ~/.bashrc
ln -s ~/.termrc/bashrc ~/.bashrc

rm ~/.screenrc
ln -s ~/.termrc/screenrc ~/.screenrc

rm ~/.tmux.conf
ln -s ~/.termrc/tmux.conf ~/.tmux.conf
