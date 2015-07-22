#!/usr/bin/env bash

DATE=`date +%Y-%m-%d`

function symlink {
    echo $1
    if [ -h $HOME/.$1 ]; then
        rm $HOME/.$1
    elif [ -f $HOME/.$1 ]; then
        BKUP="$HOME/.$1-$DATE"
        echo "Back up existing $1 to $BKUP"
        mv $HOME/.$1 $BKUP
    fi

    ln -s $HOME/.environment/$1 $HOME/.$1
}

# if [ -h ~/.bashrc ]; then
#     rm ~/.bashrc
# else
#     BKUP_BASHRC="$HOME/.bashrc-$DATE"
#     echo "Back up existing bashrc to $BKUP_BASHRC"
#     mv $HOME/.bashrc $BKUP_BASHRC
# fi


# if [ -h ~/.gitconfig ]; then
#     rm ~/.gitconfig

# ln -s .environment/bashrc $HOME/.bashrc
# ln -s .environment/bash_aliases $HOME/.bash_aliases

symlink bashrc
symlink bash_aliases
symlink gitconfig
symlink gitignore
