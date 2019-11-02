#!/usr/bin/env bash

set -e

if ! command -v aws &> /dev/null; then
  sudo pip3 install awscli --upgrade -y
  exit 0
fi

echo "Skipping awscli installation"
