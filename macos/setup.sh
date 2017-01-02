#!/usr/bin/env bash

# Basic installs
echo ">>> Installing xcode extensions"
xcode-select --install

echo ">>> Installing brew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./brew.sh
./brew-cask.sh
../setup/git.sh
../setup/npm.sh
../setup/fish.sh

echo ">>>"
echo ">>> Finished setup. Cheers!"
echo ">>>"
