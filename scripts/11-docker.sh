#!/usr/bin/env bash

set -e

if ! command -v docker &> /dev/null; then
  sudo apt install apt-transport-https ca-certificates software-properties-common -y
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt update
  sudo apt install docker-ce -y

  if ! cat /etc/group | grep -q docker; then
    sudo groupadd docker
  fi

  sudo usermod -aG docker "${USER}"
  sudo usermod -aG docker "${NAME}"
  sudo newgrp docker

  sudo systemctl enable docker

  exit 0
fi

echo "Skipping docker installation"
