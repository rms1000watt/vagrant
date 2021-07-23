#!/usr/bin/env bash

set -e

packer_version=1.7.4

if ! command -v packer &> /dev/null; then
  asdf plugin add packer
  asdf install packer ${packer_version}
  asdf global packer ${packer_version}

  exit 0
fi

echo "Skipping packer installation"
