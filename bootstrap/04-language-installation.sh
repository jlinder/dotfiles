#!/usr/bin/env bash

mkdir -p ~/.config

pyenv install 3.10.9
pyenv install 3.11.1
pyenv virtualenv 3.10.9 neovim
pyenv global 3.10.9

rbenv install 3.2.0
rbenv global 3.2.0
