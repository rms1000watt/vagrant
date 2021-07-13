#!/usr/bin/env bash

set -e

echo "NAME=${NAME}"

load_dynamic_deps() {
  if [[ -f /home/vagrant/.asdf/asdf.sh ]]; then
    . /home/vagrant/.asdf/asdf.sh
    export PATH="${PATH}:/home/vagrant/.asdf/shims"
  fi

  if [[ -d /home/vagrant/.local/bin ]]; then
    export PATH="${PATH}:/home/vagrant/.local/bin"
  fi
}

while read -r file; do
  echo "START: ${file}"
  bash "${file}"
  echo "DONE: ${file}"
  load_dynamic_deps
done < <(find /scripts -type f | grep -v provision.sh | sort)
