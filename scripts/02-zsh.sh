#!/usr/bin/env bash

set -e

if ! which zsh &> /dev/null; then
  sudo apt install zsh powerline fonts-powerline -y

  sudo su - "${NAME}" -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  sudo chsh -s /bin/zsh "${NAME}"

  exit 0
fi

echo "Skipping zsh installation"