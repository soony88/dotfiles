#!/bin/zsh
set -e

xcode-select --install

which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Running brew update and upgrade"
brew update
brew upgrade

echo "Using Brewfile to bundle install.."
brew bundle
xargs brew install < leaves.txt

echo "Running brew cleanup"
brew cleanup

echo "Done!"
