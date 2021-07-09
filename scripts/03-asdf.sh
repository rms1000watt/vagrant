#!/usr/bin/env bash

set -e

if ! command -v asdf &> /dev/null; then
  rm -rf ~/.asdf
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  cd ~/.asdf
  git checkout "$(git describe --abbrev=0 --tags)"

  echo ". \${HOME}/.asdf/asdf.sh" >> ~/.zshrc

  exit 0
fi

echo "Skipping asdf installation"
