#!/usr/bin/env bash

set -e

if ! command -v session-manager-plugin &> /dev/null; then
  curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
  sudo dpkg -i session-manager-plugin.deb

  exit 0
fi

echo "Skipping ssm-agent-plugin installation"
