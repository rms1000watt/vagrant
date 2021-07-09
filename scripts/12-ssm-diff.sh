#!/usr/bin/env bash

set -e

if ! command -v ssm-diff &> /dev/null; then
  source /home/vagrant/.bashrc
  sudo pip3 install ssm-diff -U

  exit 0
fi

echo "Skipping ssm-diff installation"
