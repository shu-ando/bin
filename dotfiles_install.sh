#!/bin/bash
test -f ~/.bash_profile && rm ~/.bash_profile
ln -s ~/dotfiles/profile ~/.bash_profile

test -f ~/.bashrc && rm ~/.bashrc
ln -s ~/dotfiles/bashrc ~/.bashrc

test -f ~/.vimrc && rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

test -f ~/.dircolors && rm ~/.dircolors
ln -s ~/dotfiles/dircolors ~/.dircolors

test -f ~/.tmux.conf && rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

