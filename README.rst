termrc
======

my repository of default terminal-related config files
(currently.bashrc, .screenrc and tmux.conf)

Installation
------------

Simply clone repository somewhere and run::

    $ /bin/bash init.sh

This would remove existing .bashrc, .screenrc and tmux.conf and put symlinks to new one.

Want an one liner?

    git clone git://github.com/michalbachowski/termrc.git ~/.termrc && cd ~/.termrc && /bin/bash init.sh
