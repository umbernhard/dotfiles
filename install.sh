#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc
mkdir -p ~/.vim/colors
cp vim/colors/harlequin.vim ~/.vim/colors/
#ln -sf ${BASEDIR}/vim/ ~/.vim

# bash
ln -sf ${BASEDIR}/bashrc ~/.bashrc
ln -sf ${BASEDIR}/bash_profile ~/.bash_profile

# tmux
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf

# ctags
ln -sf ${BASEDIR}/ctags.conf ~/.ctags

# git
ln -sf ${BASEDIR}/gitconfig ~/.gitconfig

# git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh

source ~/.bashrc
