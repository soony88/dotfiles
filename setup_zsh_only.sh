#!/bin/bash
set -e

echo "Downloading and installing Oh My Zsh.."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Removing default .zshrc.."
rm -f ~/.zshrc

echo "Setting up symlinks.."
ln -s $(pwd)/dotfiles/.zshrc ~

echo "Done! Enter the following command to set Zsh as default shell"
echo '$ chsh -s $(which zsh)'
