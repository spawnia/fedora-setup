#!/bin/sh
# https://github.com/spawnia/dotfiles

git clone git@github.com:spawnia/dotfiles.git
cd dotfiles
git submodule init
git submodule update

sudo dnf install stow

rm ~/.bash_logout ~/.bash_profile ~/.bashrc
stow bash

rm ~/.gitconfig
stow git
