#!/usr/bin/env bash
[[ -f ~/.bash_profile ]] && rm ~/.bash_profile
ln -s ~/dotfiles/bash_profile ~/.bash_profile

[[ -f ~/.bash_profile.local ]] && rm ~/.bash_profile.local
ln -s ~/dotfiles/bash_profile.local ~/.bash_profile.local

[[ -f ~/.bashrc ]] && rm ~/.bashrc
ln -s ~/dotfiles/bashrc ~/.bashrc

[[ -f ~/.bashrc.local ]] && rm ~/.bashrc.local
ln -s ~/dotfiles/bashrc.local ~/.bashrc.local

[[ -f ~/.vimrc ]] && rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

[[ -f ~/.nvimrc ]] && rm ~/.nvimrc
ln -s ~/dotfiles/vimrc ~/.nvimrc

[[ -f ~/.dircolors ]] && rm ~/.dircolors
ln -s ~/dotfiles/dircolors ~/.dircolors

[[ -f ~/.tmux.conf ]] && rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

