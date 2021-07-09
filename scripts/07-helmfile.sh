#!/usr/bin/env bash

set -e

helmfile_version=0.137.0

if ! command -v helmfile &> /dev/null; then
  . /home/vagrant/.asdf/asdf.sh

  asdf plugin add helmfile
  asdf install helmfile ${helmfile_version}
  asdf global helmfile ${helmfile_version}

  exit 0
fi

echo "Skipping helmfile installation"
