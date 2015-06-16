#!/bin/sh
# Install oh-my-zsh
if [ -d "$HOME/.prezto/" ]
then
  echo "Prezto already installed, skipping installation"
else
  echo "Installing prezto..."
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi
