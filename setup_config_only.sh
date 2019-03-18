#!/bin/bash
set -e

echo "Removing previous symlinks.."
rm -rf ~/.gitconfig
rm -rf ~/.vimrc

echo "Setting symlinks for git and vim.."
ln -s $(pwd)/dotfiles/.gitconfig ~
ln -s $(pwd)/dotfiles/.vimrc ~

echo "Downloading monokai vim syntax highlighting.."
mkdir -p ~/.vim/colors
wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim -O ~/.vim/colors/monokai.vim

echo "Done!"
