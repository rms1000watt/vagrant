#!/usr/bin/env bash

if ! cat /etc/passwd | grep -qi "${NAME}"; then
  sudo useradd -m -U ${NAME} -u 666
  sudo cp -pr /home/vagrant/.ssh "/home/${NAME}/"
  sudo chown -R "${NAME}:${NAME}" "/home/${NAME}"
  echo "%${NAME} ALL=(ALL) NOPASSWD: ALL" > "/etc/sudoers.d/${NAME}"
  sudo usermod -aG vagrant "${NAME}"

  exit 0
fi

echo "Skipping user addition: ${NAME}"
