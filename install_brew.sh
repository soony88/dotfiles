#!/bin/bash
set -e

echo "Installing Brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Running brew update and upgrade"
brew update
brew upgrade

echo "Using Brewfile to bundle install.."
brew bundle

echo "Running brew cleanup"
brew cleanup

echo "Done!"
