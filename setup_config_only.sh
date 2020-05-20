#!/bin/bash
set -e

echo "Removing previous symlinks.."

files=$(find ./config -type f -exec basename {} \;)

for file in $files; do
  echo Removing $file
  rm -rf ~/$file
done

echo "Setting symlinks for git, tmux and vim.."
for file in $files; do
  ln -s $(pwd)/config/$file ~
done

echo "Done!"
