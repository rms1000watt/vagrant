#!/usr/bin/env bash

set -e

checks=(unzip curl git zsh pip3 docker direnv chronyd node jq)
apt_installs=(unzip curl git jq)

need_update=false
for check in "${checks[@]}"; do
  if ! command -v "${check}" &> /dev/null; then
    need_update=true
  fi
done

if ${need_update}; then
  echo "sudo apt update -y"
  sudo apt update -y
fi

for apt_install in "${apt_installs[@]}"; do
  if ! command -v "${apt_install}" &> /dev/null; then
    echo "sudo apt install ${apt_install}"
    sudo apt install -y "${apt_install}"
  fi
done

# UGH.. figure out a better pattern for this in the arrays above
if ! command -v chronyd &> /dev/null; then
  echo "sudo apt install chrony"
  sudo apt install -y chrony
fi

# Update git to use vim as the editor
if ! git config --global -l | grep -q vim; then
  git config --global core.editor "vim"
fi

echo "finished 01-apt.sh"
