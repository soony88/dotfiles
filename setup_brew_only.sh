#!/bin/bash
set -e

echo "Running brew update and upgrade"
brew update
brew upgrade

echo "Using Brewfile to bundle install.."
brew bundle

echo "Running brew cleanup"
brew cleanup

echo "Done!"
