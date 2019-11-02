#!/usr/bin/env bash

set -e

if ! command -v ssm-diff &> /dev/null; then
  sudo pip3 install ssm-diff -y

  exit 0
fi

echo "Skipping ssm-diff installation"
