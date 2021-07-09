#!/usr/bin/env bash

set -e

stern_version=1.19.0
. /home/vagrant/.asdf/asdf.sh

if ! command -v stern &> /dev/null; then
  asdf plugin add stern
  asdf install stern ${stern_version}
  asdf global stern ${stern_version}

  exit 0
fi

echo "Skipping stern installation"
