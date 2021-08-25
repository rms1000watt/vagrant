#!/usr/bin/env bash

set -e

golang_version=1.16.5

if ! command -v go &> /dev/null; then
  asdf plugin add golang
  asdf install golang ${golang_version}
  asdf global golang ${golang_version}

  echo "export GOPATH=/go" >> /home/vagrant/.zshrc
  echo "export PATH=\$PATH:\$GOPATH/bin" >> /home/vagrant/.zshrc
  echo "source /home/vagrant/.zshrc" >> /home/vagrant/.bash_profile

  exit 0
fi

echo "Skipping golang installation"
