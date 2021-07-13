#!/usr/bin/env bash

if grep -q "PasswordAuthentication no" /etc/ssh/sshd_config; then
  sed 's/PasswordAuthentication no/PasswordAuthentication yes/g' < /etc/ssh/sshd_config > __tmp && sudo mv __tmp /etc/ssh/sshd_config
  sudo systemctl restart sshd
fi

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
