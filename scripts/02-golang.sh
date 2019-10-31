#!/usr/bin/env bash

set -e

if ! which go &> /dev/null; then
  sudo add-apt-repository ppa:longsleep/golang-backports -y
  sudo apt update -y
  sudo apt install golang-go -y

  echo "export GOPATH=/home/vagrant/go" >> /home/vagrant/.zshrc

  exit 0
fi

echo "Skipping golang installation"
