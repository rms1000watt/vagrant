#!/usr/bin/env bash

set -e

if ! which pip3 &> /dev/null; then
  sudo apt install python3-distutils -y
  curl -O https://bootstrap.pypa.io/get-pip.py
  python3 get-pip.py
  rm get-pip.py

  exit 0
fi

echo "Skipping pip3 installation"
