#!/usr/bin/env bash

set -e

kubectl_version=1.20.9

if ! command -v kubectl &> /dev/null; then
  asdf plugin add kubectl
  asdf install kubectl ${kubectl_version}
  asdf global kubectl ${kubectl_version}

  exit 0
fi

echo "Skipping kubectl installation"
