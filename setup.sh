#!/bin/bash

PWD=`pwd`; 


# check for color awesomeness... 
echo -n "  - Check Terminal is xterm-256color: "
if [ $TERM != "xterm-256color" ] 
then 
    echo "Fail, it is : $TERM"
else
    echo "OK"
fi

# set screenrc file
echo -n "  - Setting $HOME/.screenrc: "
if [ ! -f "$HOME/.screenrc" ]
then
    ln -s "$PWD/screenrc" "$HOME/.screenrc"
    echo "Done"
else
    echo "Skip, already exists"
fi

# Create VIM Directories
echo -n "  - Creating $HOME/.vim ... " 
if [ ! -d "$HOME/.vim" ] 
then
    ln -s "$PWD/vim/vim-dir" "$HOME/.vim"
    echo "Done"
else
    echo "Skip, already exists"
fi

echo -n "  - Creating $HOME/.vimrc ... "
if [ ! -f "$HOME/.vimrc" ]
then
    ln -s "$PWD/vim/vimrc" "$HOME/.vimrc"
    echo "Done"
else 
    echo "Skip, already exists"
fi
