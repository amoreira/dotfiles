#!/usr/bin/env bash

# Basic installs
echo ">>> Installing xcode extensions"
xcode-select --install

echo ">>> Installing brew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./macos/brew.sh
./macos/brew-cask.sh
./setup/git.sh
./setup/npm.sh
./setup/fish.sh
./setup/tmux.sh

echo ">>>"
echo ">>> Finished setup. Cheers!"
echo ">>>"
