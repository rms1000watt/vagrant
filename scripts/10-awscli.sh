#!/usr/bin/env bash

set -e

if ! command -v aws &> /dev/null; then
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  sudo ./aws/install
  rm -rf ./aws awscliv2.zip

  exit 0
fi

echo "Skipping awscli installation"
