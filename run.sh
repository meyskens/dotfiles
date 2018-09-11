#!/bin/bash

function sync {
    echo "Syncing $1 and $2"
    unison -auto -batch $1 $2
}

sync ~/.profile ./.profile
sync ~/.bashrc ./.bashrc
sync ~/.config/fish/ ./.config/fish/
sync ~/.config/Code/User/settings.json ./.config/Code/User/settings.json

# i3
sync ~/.i3/config ./.i3/config
sync ~/.i3/i3blocks.conf ./.i3/i3blocks.conf
sync ~/.i3/vpn.sh ./.i3/vpn.sh
sync ~/.fonts ./.fonts
sync ~/.i3/battery ./.i3/battery

# docker scripts
sync /usr/local/bin/ ./bin