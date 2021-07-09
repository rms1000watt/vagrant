#!/usr/bin/env bash

set -e

terraform_version=1.0.1

if ! command -v terraform &> /dev/null; then
  source /root/.bashrc

  asdf plugin add terraform
  asdf install terraform ${terraform_version}
  asdf global terraform ${terraform_version}

  exit 0
fi

echo "Skipping terraform installation"
