#!/usr/bin/env bash

brew update

# install brewfile dependencies
brew bundle install

# Additional set up of the installed programs
chsh -s /opt/homebrew/bin/bash
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

