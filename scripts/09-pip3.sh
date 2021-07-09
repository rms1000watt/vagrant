#!/usr/bin/env bash

set -e

if ! command -v pip3 &> /dev/null; then
  sudo apt install python3-distutils -y
  curl -O https://bootstrap.pypa.io/get-pip.py
  python3 get-pip.py
  rm get-pip.py

  echo "export PATH=\$PATH:/home/vagrant/.local/bin" >> /home/vagrant/.bashrc
  echo "export PATH=\$PATH:/home/vagrant/.local/bin" >> /home/vagrant/.zshrc

  exit 0
fi

echo "Skipping pip3 installation"
