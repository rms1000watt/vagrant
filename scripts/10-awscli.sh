#!/usr/bin/env bash

set -e

if ! command -v aws &> /dev/null; then
  python3 -m pip install awscli -U

  exit 0
fi

echo "Skipping awscli installation"
