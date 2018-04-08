#!/bin/bash

function sync {
    echo "Syncing $1 and $2"
    unison -auto -batch $1 $2
}

sync ~/.profile ./.profile
sync ~/.bashrc ./.bashrc
sync ~/.config/fish/ ./.config/fish/
sync ~/.config/Code/User/settings.json ./.config/Code/User/settings.json
