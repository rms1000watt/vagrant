#!/usr/bin/env bash

set -e

# kubectl_version=v1.16.2
kubectl_version=v1.14.3

if ! which kubectl &> /dev/null; then
  curl -L -o kubectl "https://storage.googleapis.com/kubernetes-release/release/${kubectl_version}/bin/linux/amd64/kubectl"
  chmod a+x kubectl
  mv kubectl /usr/local/bin

  exit 0
fi

echo "Skipping kubectl installation"
