#!/bin/bash

PWD=`pwd`; 

# link in vim settings
if [ ! -d ~/.vim ] 
then
    echo "Creating ~/.vim"
    ln -s "$PWD/vim/vim-dir" ~/.vim
else
    echo "~/.vim already exists"
fi

if [ ! -f ~/.vimrc ]
then
    echo "Creating ~/.vimrc"
    ln -s "$PWD/vim/vimrc" ~/.vimrc
else 
    echo "~/.vimrc already exists"
fi
