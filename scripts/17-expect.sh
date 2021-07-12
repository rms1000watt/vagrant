#!/usr/bin/env bash

set -e

if ! command -v expect &> /dev/null; then
  sudo apt install expect -y

  exit 0
fi

echo "Skipping expect installation"
