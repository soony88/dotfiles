#!/bin/bash
set -e

echo "Running brew update and upgrade"
brew update
brew upgrade

echo "Using Brewfile to bundle install.."
pushd $(pwd)/dotfiles
brew bundle
popd

echo "Running brew cleanup"
brew cleanup

echo "Done!"
