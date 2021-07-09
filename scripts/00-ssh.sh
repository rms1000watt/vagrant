#!/usr/bin/env bash

if [[ ! -f /home/vagrant/.ssh/config ]]; then
  cat << EOF > /home/vagrant/.ssh/config
Host github.com
  HostName github.com
  IdentityFile /home/vagrant/.ssh/id_rsa_$NAME
  User git
EOF

  exit 0
fi

echo "Skipping .ssh/config creation"
