#!/bin/sh



cp -rf .vim ~/.vim
cp -f .vimrc ~/.vimrc

sudo apt-get install curl

pip install pylint
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

sudo apt-get install tmux

