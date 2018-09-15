#!/bin/bash
set -xe

if [ ! -d ~/dev/github.com/mykiwi/arch-setup ]; then
    mkdir -p ~/dev/github.com/mykiwi
    git clone https://github.com/mykiwi/arch-setup.git ~/dev/github.com/mykiwi/arch-setup
    cd ~/dev/github.com/mykiwi/arch-setup
else
    cd ~/dev/github.com/mykiwi/arch-setup
    git pull --rebase
fi

make
