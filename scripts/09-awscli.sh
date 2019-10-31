#!/usr/bin/env bash

set -e

if ! which aws &> /dev/null; then
  sudo pip3 install awscli --upgrade
  exit 0
fi

echo "Skipping awscli installation"
