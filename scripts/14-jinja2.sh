#!/usr/bin/env bash

set -e

if ! command -v jinja2 &> /dev/null; then
  sudo pip3 install jinja2 jinja2-cli -y

  exit 0
fi

echo "Skipping jinja2 installation"
