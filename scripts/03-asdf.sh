#!/usr/bin/env bash

set -e

if ! command -v asdf &> /dev/null; then
  rm -rf /home/vagrant/.asdf
  git clone https://github.com/asdf-vm/asdf.git /home/vagrant/.asdf
  cd /home/vagrant/.asdf
  git checkout "$(git describe --abbrev=0 --tags)"

  echo ". /home/vagrant/.asdf/asdf.sh" >> /home/vagrant/.zshrc
  echo ". /home/vagrant/.asdf/asdf.sh" >> /home/vagrant/.bashrc
  echo ". /home/vagrant/.asdf/completions/asdf.bash" >> /home/vagrant/.bashrc

  echo ". /home/vagrant/.asdf/asdf.sh" >> /root/.zshrc
  echo ". /home/vagrant/.asdf/asdf.sh" >> /root/.bashrc
  echo ". /home/vagrant/.asdf/completions/asdf.bash" >> /root/.bashrc

  source /root/.bashrc
  source /home/vagrant/.asdf/asdf.sh
  source /home/vagrant/.asdf/completions/asdf.bash

  exit 0
fi

echo "Skipping asdf installation"
