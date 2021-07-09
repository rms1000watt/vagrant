#!/usr/bin/env bash

set -e

golang_version=1.16.5

if ! command -v go &> /dev/null; then
  . /home/vagrant/.asdf/asdf.sh

  asdf plugin add golang
  asdf install golang ${golang_version}
  asdf global golang ${golang_version}

  echo "export GOPATH=/go" >> /home/vagrant/.zshrc

  exit 0
fi

echo "Skipping golang installation"
