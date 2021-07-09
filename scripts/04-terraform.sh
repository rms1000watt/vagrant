#!/usr/bin/env bash

set -e

terraform_version=1.0.2

if ! command -v terraform &> /dev/null; then
  . /home/vagrant/.asdf/asdf.sh

  asdf plugin add terraform
  asdf install terraform ${terraform_version}
  asdf global terraform ${terraform_version}

  exit 0
fi

echo "Skipping terraform installation"
