#!/usr/bin/env bash

set -e

helmfile_version=v0.90.1

if ! command -v helmfile &> /dev/null; then
  curl -L -o helmfile "https://github.com/roboll/helmfile/releases/download/${helmfile_version}/helmfile_linux_amd64"
  chmod a+x helmfile
  mv helmfile /usr/local/bin

  exit 0
fi

echo "Skipping helmfile installation"
