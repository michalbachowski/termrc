#!/bin/bash

mkdir "backup";

for dotfile in `ls -1 dotfiles/`; do
    echo "Installing $dotfile";

    if [ -e ~/test/".$dotfile" ]; then
        echo "    Backing up $dotfile into backup/$dotfile";
        mv ~/test/.$dotfile ./backup/
    elif [ -h ~/test/".$dotfile" ]; then
        echo "    Removing symlink ~/test/.$dotfile"
        rm ~/test/.$dotfile
    fi

    echo "    Creating symlink ~/test/.$dotfile";
    ln -s ./dotfiles/$dotfile ~/test/.$dotfile

    echo "   Done.";
done;

echo "Done";
