#!/usr/bin/env bash

set -e

# terraform_version=0.12.12
terraform_version=0.11.14

if ! command -v terraform &> /dev/null; then
  curl -L -o "terraform_${terraform_version}_linux_amd64.zip" "https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip"
  unzip "terraform_${terraform_version}_linux_amd64.zip"
  sudo mv terraform /usr/local/bin
  rm "terraform_${terraform_version}_linux_amd64.zip"

  exit 0
fi

echo "Skipping terraform installation"
