#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim

# bash
ln -s ${BASEDIR}/bashrc ~/.bashrc
ln -s ${BASEDIR}/bash_profile ~/.bash_profile

# tmux
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf

# ctags
ln -s ${BASEDIR}/ctags.conf ~/.ctags

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
