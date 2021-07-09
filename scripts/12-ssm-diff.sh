#!/usr/bin/env bash

set -e

if ! command -v ssm-diff &> /dev/null; then
  python3 -m pip install ssm-diff -U

  exit 0
fi

echo "Skipping ssm-diff installation"
