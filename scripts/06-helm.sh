#!/usr/bin/env bash

set -e

helm_version=3.4.1

if ! command -v helm &> /dev/null; then
  asdf plugin add helm
  asdf install helm ${helm_version}
  asdf global helm ${helm_version}

  helm plugin install https://github.com/databus23/helm-diff

  exit 0
fi

echo "Skipping helm installation"
