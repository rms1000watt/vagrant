#!/usr/bin/env bash

set -e

argo_rollouts_version=1.0.1

if ! asdf plugin list | grep -q argo-rollouts; then
  asdf plugin add argo-rollouts
  asdf install argo-rollouts ${argo_rollouts_version}
  asdf global argo-rollouts ${argo_rollouts_version}

  exit 0
fi

echo "Skipping argo-rollouts installation"
