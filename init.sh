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

# new version of resty
echo "Initializing ~/.restyrc with current version"
curl -L http://github.com/micha/resty/raw/master/resty > ~/.restyrc

echo "Done";
