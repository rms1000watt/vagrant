#!/usr/bin/env bash

set -e

if ! command -v zsh &> /dev/null; then
  sudo apt install zsh powerline fonts-powerline -y

  sudo chsh -s /bin/zsh vagrant
  sudo su - vagrant -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  exit 0
fi

echo "Skipping zsh installation"
