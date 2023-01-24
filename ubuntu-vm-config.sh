#!/bin/bash

./ubuntu-get-latest-git.sh

cp gitconfig ~/.gitconfig
git config --global user.signingkey "$(ssh-add -L)"

sudo snap install nvim --classic
mkdir ~/.config
cp -r nvim ~/.config/

./vimplug.sh

sudo apt install build-essential -y

export PATH=$PATH:~/.local/bin/
