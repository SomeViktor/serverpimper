#!/bin/sh



cp -rf .vim ~/.vim
cp -f .vimrc ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

sudo apt-get install tmux

