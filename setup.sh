#!/bin/bash

cd `dirname $0`;

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
if [ ! -e "$HOME/.screenrc" ]
then
    ln -s "$PWD/screenrc" "$HOME/.screenrc"
    echo "Done"
else
    echo "Skip, already exists"
fi

# set bashrc file
echo -n "  - Setting $HOME/.bashrc: "
if [ ! -e "$HOME/.bashrc" ]
then
    ln -s "$PWD/bashrc" "$HOME/.bashrc"
    echo "Done"
else
    echo "Skip, already exists"
fi

# set bash_profile file
echo -n "  - Setting $HOME/.bash_profile: "
if [ ! -e "$HOME/.bash_profile" ]
then
    ln -s "$PWD/bash_profile" "$HOME/.bash_profile"
    echo "Done"
else
    echo "Skip, already exists"
fi

# Create VIM Directories
echo -n "  - Creating $HOME/.vim ... "
if [ ! -e "$HOME/.vim" ]
then
    ln -s "$PWD/vim/vim-dir" "$HOME/.vim"
    echo "Done"
else
    echo "Skip, already exists"
fi

echo -n "  - Creating $HOME/.vimrc ... "
if [ ! -e "$HOME/.vimrc" ]
then
    ln -s "$PWD/vim/vimrc" "$HOME/.vimrc"
    echo "Done"
else
    echo "Skip, already exists"
fi
