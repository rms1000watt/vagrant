#!/usr/bin/env bash

set -e

# helm_version=v2.15.2
helm_version=v2.13.1

if ! command -v helm &> /dev/null; then
  curl -L -o helm.tar.gz "https://get.helm.sh/helm-${helm_version}-linux-amd64.tar.gz"
  tar -zxvf helm.tar.gz
  mv linux-amd64/helm /usr/local/bin
  rm -rf helm.tar.gz linux-amd64

  exit 0
fi

echo "Skipping helm installation"
