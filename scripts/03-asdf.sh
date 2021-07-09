#!/usr/bin/env bash

set -e

if [[ ! -f /home/vagrant/.asdf/asdf.sh ]]; then
  rm -rf /home/vagrant/.asdf
  git clone https://github.com/asdf-vm/asdf.git /home/vagrant/.asdf
  cd /home/vagrant/.asdf
  git checkout "$(git describe --abbrev=0 --tags)"

  echo ". /home/vagrant/.asdf/asdf.sh" >> /home/vagrant/.zshrc
  echo ". /home/vagrant/.asdf/asdf.sh" >> /home/vagrant/.bashrc
  echo ". /home/vagrant/.asdf/completions/asdf.bash" >> /home/vagrant/.bashrc

  exit 0
fi

echo "Skipping asdf installation"
