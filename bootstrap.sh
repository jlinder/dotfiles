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

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update

# install brewfile dependencies
brew bundle install

# install vim-plug
#curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Run this after the rest of the script

pyenv install 2.7.15
pyenv install 3.6.7
pyenv install 3.7.3
pyenv virtualenv 3.7.3 neovim
pyenv global 3.7.3

PYENV_VERSION=neovim pip install pip --upgrade
PYENV_VERSION=3.6.7 pip install pip --upgrade
PYENV_VERSION=3.7.3 pip install pip --upgrade

PYENV_VERSION=neovim pip install neovim --upgrade
PYENV_VERSION=3.6.7 pip install ipython
PYENV_VERSION=3.7.3 pip install ipython

# Install AstroNvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
