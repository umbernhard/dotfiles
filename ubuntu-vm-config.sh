#!/bin/bash

./ubuntu-get-latest-git.sh

cp gitconfig ~/.gitconfig
git config --global user.signingkey "$(ssh-add -L)"

mkdir ~/.config
cp -r nvim ~/.config/

./vimplug.sh
