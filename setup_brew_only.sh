#!/bin/bash
set -e

brew update
brew upgrade

echo "Using Brewfile to bundle install.."
brew bundle
