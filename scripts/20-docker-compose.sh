#!/usr/bin/env bash

set -e

if ! command -v docker-compose &> /dev/null; then
  sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose
  sudo chmod a+x /usr/bin/docker-compose

  exit 0
fi

echo "Skipping docker-compose installation"
