#!/bin/sh

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc
mkdir -p ~/.vim/colors
cp vim/colors/harlequin.vim ~/.vim/colors/
#ln -sf ${BASEDIR}/vim/ ~/.vim

# profile
ln -sf ${BASEDIR}/profile ~/.profile

if [[ "$SHELL" == *"bash"* ]]; then
    echo "Setting up bash"
    ln -sf ${BASEDIR}/bashrc ~/.bashrc
    ln -sf ${BASEDIR}/bash_profile ~/.bash_profile
elif [[ "$SHELL" == *"zsh"* ]]; then
    echo "Setting up zsh"
    ln -sf ${BASEDIR}/zshrc ~/.zshrc
    ln -sf ${BASEDIR}/oh-my-zsh ~/.oh-my-zsh
else
    echo "$SHELL not recognized"
fi

# tmux
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf

# ctags
ln -sf ${BASEDIR}/ctags.conf ~/.ctags

# git
ln -sf ${BASEDIR}/gitconfig ~/.gitconfig

# git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh

if [[ "$SHELL" == *"bash"* ]]; then
    source ~/.bashrc
elif [[ "$SHELL" == *"zsh"* ]]; then
    source ~/.zshrc
else
    echo "$SHELL not recognized"
fi
