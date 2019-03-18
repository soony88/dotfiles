#!/bin/bash

set -e

echo "Downloading and installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Removing default .zshrc"
rm -f /Users/kuyumcians/.zshrc

echo "Setting up symlinks"
ln -s $(pwd)/.zshrc ~

echo "Setting Zsh as default shell"
chsh -s $(which zsh)

# TODO
# - segregate dotfiles
