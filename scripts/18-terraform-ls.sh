#!/usr/bin/env bash
# Ref: https://github.com/hashicorp/terraform-ls

set -e

if ! command -v terraform-ls &> /dev/null; then
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  sudo apt update
  sudo apt install terraform-ls

  exit 0
fi

echo "Skipping terraform-ls installation"
