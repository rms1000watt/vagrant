#!/usr/bin/env bash

set -e

echo "NAME=${NAME}"

load_asdf() {
  if [[ -f /home/vagrant/.asdf/asdf.sh ]]; then
    . /home/vagrant/.asdf/asdf.sh
  fi
}

while read -r file; do
  echo "START: ${file}"
  bash "${file}"
  echo "DONE: ${file}"
  load_asdf
done < <(find /scripts -type f | sort)
