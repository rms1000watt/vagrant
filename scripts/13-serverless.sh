#!/usr/bin/env bash

set -e

if ! command -v serverless &> /dev/null; then
  curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
  sudo apt install nodejs -y
  npm install -g serverless

  exit 0
fi

echo "Skipping serverless installation"
