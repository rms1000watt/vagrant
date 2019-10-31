#!/usr/bin/env bash

set -e

if [[ ! -f /home/vagrant/.ssh/id_rsa ]] && [[ ! -f /home/vagrant/.ssh/id_rsa.pub ]]; then
  sudo su - vagrant -c "ssh-keygen -t rsa -C put.your@email.com -f /home/vagrant/.ssh/id_rsa -P ''"

  exit 0
fi

echo "Skipping ssh-keys installation"
