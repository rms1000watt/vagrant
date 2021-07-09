#!/usr/bin/env bash

set -e

terragrunt_version=0.31.0

if ! command -v terragrunt &> /dev/null; then
  . /home/vagrant/.asdf/asdf.sh

  asdf plugin add terragrunt
  asdf install terragrunt ${terragrunt_version}
  asdf global terragrunt ${terragrunt_version}

  exit 0
fi

echo "Skipping terragrunt installation"
