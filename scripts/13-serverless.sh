#!/usr/bin/env bash

set -e

if ! command -v serverless &> /dev/null; then
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install nodejs -y
  sudo npm -g i serverless

  exit 0
fi

echo "Skipping serverless installation"
