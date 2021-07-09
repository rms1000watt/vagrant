#!/usr/bin/env bash

set -e

if ! command -v unzip   &> /dev/null || \
    ! command -v zsh    &> /dev/null || \
    ! command -v pip3   &> /dev/null || \
    ! command -v docker &> /dev/null || \
    ! command -v node   &> /dev/null || \
    ! command -v curl   &> /dev/null || \
    ! command -v git    &> /dev/null || \
    ! command -v go     &> /dev/null; then

    sudo apt update -y
fi

if ! command -v unzip &> /dev/null; then
  sudo apt install unzip
fi

if ! command -v curl &> /dev/null; then
  sudo apt install curl
fi

if ! command -v git &> /dev/null; then
  sudo apt install git
fi

# sudo apt install xfce4 xfce4-goodies tightvncserver