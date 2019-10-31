#!/usr/bin/env bash

set -e

# terragrunt_version=v0.21.1
terragrunt_version=v0.18.7

if ! which terragrunt &> /dev/null; then
  curl -L -o terragrunt "https://github.com/gruntwork-io/terragrunt/releases/download/${terragrunt_version}/terragrunt_linux_amd64"
  chmod a+x terragrunt
  sudo mv terragrunt /usr/local/bin

  exit 0
fi

echo "Skipping terragrunt installation"
