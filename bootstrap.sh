#!/bin/bash

mkdir ~/.config

ln -s ~/dotfiles/nvim               ~/.config/nvim

ln -s ~/dotfiles/bash/bash_profile  ~/.bash_profile
ln -s ~/dotfiles/bash/bashrc        ~/.bashrc
ln -s ~/dotfiles/gitconfig          ~/.gitconfig
ln -s ~/dotfiles/gitignore_global   ~/.gitignore_global
ln -s ~/dotfiles/inputrc            ~/.inputrc
ln -s ~/dotfiles/vimrc              ~/.vimrc

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash-completion \
    docker-clean \
    git \
    ipython \
    libpng \
    libyaml \
    neovim \
    node \
    openssl \
    python \
    python3 \
    readline \
    ruby
