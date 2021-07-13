#!/usr/bin/env bash

set -e

if ! command -v unzip   &> /dev/null || \
    ! command -v zsh    &> /dev/null || \
    ! command -v pip3   &> /dev/null || \
    ! command -v docker &> /dev/null || \
    ! command -v direnv &> /dev/null || \
    ! command -v node   &> /dev/null; then

    echo "sudo apt update -y"
    sudo apt update -y
fi

if ! command -v unzip &> /dev/null; then
  echo "sudo apt install unzip"
  sudo apt install unzip
fi

if ! command -v curl &> /dev/null; then
  echo "sudo apt install curl"
  sudo apt install curl
fi

if ! command -v git &> /dev/null; then
  echo "sudo apt install git"
  sudo apt install git
fi

echo "finished 01-apt.sh"
