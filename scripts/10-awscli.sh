#!/usr/bin/env bash

set -e

if ! command -v aws &> /dev/null; then
  sudo /home/vagrant/.local/bin/pip3 install awscli -U

  exit 0
fi

echo "Skipping awscli installation"
