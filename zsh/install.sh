#!/bin/sh
# Install oh-my-zsh
if [ -d "$HOME/.oh-my-zsh/" ]
then
  echo "oh-my-zsh already installed, skipping installation"
else
  echo "Installing oh-my-zsh..."
  # curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi
