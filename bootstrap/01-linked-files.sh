#!/usr/bin/env bash

mkdir -p ~/.config

unlink ~/.config/nvim ~/.bash_profile ~/.bashrc ~/.gitconfig ~/.gitignore_global ~/.inputrc ~/.zshrc

# Not linking nvmin config in favor of trying AstroNvim
#ln -s ~/dotfiles/nvim               ~/.config/nvim

ln -s ~/dotfiles/bash/bash_profile  ~/.bash_profile
ln -s ~/dotfiles/bash/bashrc        ~/.bashrc
ln -s ~/dotfiles/gitconfig          ~/.gitconfig
ln -s ~/dotfiles/gitignore_global   ~/.gitignore_global
ln -s ~/dotfiles/inputrc            ~/.inputrc
ln -s ~/dotfiles/zshrc              ~/.zshrc

