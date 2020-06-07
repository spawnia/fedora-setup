#!/bin/sh

git clone git@github.com:spawnia/dotfiles.git
sudo dnf install stow
cd dotfiles
git submodule init
git submodule update
stow bash
stow git
