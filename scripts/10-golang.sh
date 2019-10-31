#!/usr/bin/env bash

set -e

if ! command -v go &> /dev/null; then
  sudo add-apt-repository ppa:longsleep/golang-backports -y
  sudo apt update -y
  sudo apt install golang-go -y

  echo "export GOPATH=/go" >> "/home/${NAME}/.zshrc"

  exit 0
fi

echo "Skipping golang installation"
