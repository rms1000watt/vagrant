#!/usr/bin/env bash

set -e

if ! grep -q direnv ~/.zshrc; then
  echo "eval \"\$(direnv hook zsh)\"" >> ~/.zshrc
fi

if ! grep -q direnv ~/.bashrc; then
  echo "eval \"\$(direnv hook zsh)\"" >> ~/.bashrc
fi

if ! command -v direnv &> /dev/null; then
  sudo apt install direnv

  exit 0
fi

echo "Skipping direnv installation"
