#!/bin/bash

mkdir "backup";

for dotfile in `ls -1 dotfiles/`; do
    echo "Installing $dotfile";

    if [ -e ~/".$dotfile" ]; then
        echo "    Backing up $dotfile into backup/$dotfile";
        mv ~/.$dotfile ./backup/
    elif [ -h ~/".$dotfile" ]; then
        echo "    Removing symlink ~/.$dotfile"
        rm ~/.$dotfile
    fi

    echo "    Creating symlink ~/.$dotfile";
    ln -s `pwd`/dotfiles/$dotfile ~/.$dotfile

    echo "   Done.";
done;

echo "Done";
