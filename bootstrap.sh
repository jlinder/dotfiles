#!/bin/bash

mkdir ~/.config

ln -s ~/dotfiles/nvim               ~/.config/nvim

ln -s ~/dotfiles/bash/bash_profile  ~/.bash_profile
ln -s ~/dotfiles/bash/bashrc        ~/.bashrc
ln -s ~/dotfiles/gitconfig          ~/.gitconfig
ln -s ~/dotfiles/gitignore_global   ~/.gitignore_global
ln -s ~/dotfiles/inputrc            ~/.inputrc
ln -s ~/dotfiles/python-version     ~/.python-verison

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
    bash-completion \
    ctags \
    docker-clean \
    git \
    libpng \
    libyaml \
    jq \
    neovim \
    node \
    openssl \
    pyenv \
    pyenv-virtualenv \
    readline \
    ruby \
    watch \
    wget

# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

exit 0

# Run this after the rest of the script

pyenv install 2.7.14
pyenv install 3.6.4
pyenv virtualenv 3.6.4 neovim

echo neovim > python-version

pip install neovim --upgrade

echo 3.6.4 > python-version

pip install ipython
