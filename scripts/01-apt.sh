#!/usr/bin/env bash

set -e

if ! command -v unzip   &> /dev/null || \
    ! command -v zsh    &> /dev/null || \
    ! command -v pip3   &> /dev/null || \
    ! command -v docker &> /dev/null || \
    ! command -v node   &> /dev/null || \
    ! command -v go     &> /dev/null; then

    sudo apt update -y
fi


if ! command -v unzip &> /dev/null; then
  sudo apt install unzip
fi
