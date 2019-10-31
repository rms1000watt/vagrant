#!/usr/bin/env bash

set -e

if ! which unzip   &> /dev/null || \
    ! which zsh    &> /dev/null || \
    ! which pip3   &> /dev/null || \
    ! which docker &> /dev/null || \
    ! which go     &> /dev/null; then

    sudo apt update -y
fi


if ! which unzip &> /dev/null; then
  apt install unzip
fi
