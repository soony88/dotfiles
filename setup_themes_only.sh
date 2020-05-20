#!/bin/bash
set -e

echo "Installing Monokai vim syntax highlighting.."
mkdir -p ~/.vim/colors
ln -s $(pwd)/themes/monokai.vim ~/.vim/colors/monokai.vim || true

echo "Installing ZSH theme.."
ln -s $(pwd)/themes/sass.zsh-theme ~/.oh-my-zsh/themes || true


echo "Done!"
