#!/usr/bin/env bash

set -e

if ! command -v ansible &> /dev/null; then
  sudo pip3 install ansible -U

  exit 0
fi

echo "Skipping ansible installation"
