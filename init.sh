#!/usr/bin/env bash

name=devops
if [[ -n $1 ]]; then
  name=$1
fi

echo "Checking Deps..."

if ! command -v vagrant &> /dev/null; then
  brew install --cask vagrant
fi

if ! command -v virtualbox &> /dev/null; then
  brew install --cask virtualbox
fi

if [[ ! -d "/Applications/Vagrant Manager.app" ]]; then
  brew install --cask vagrant-manager
fi

vplist=$(vagrant plugin list)

if ! echo "${vplist}" | grep -q vagrant-disksize; then
  vagrant plugin install vagrant-disksize
fi

echo "Moving files to ${HOME}/vagrant/${name}"

mkdir -p "${HOME}/vagrant/${name}" &> /dev/null
mkdir -p "${HOME}/vagrant/${name}/aws" &> /dev/null

if [[ ! -f ${HOME}/.ssh/id_rsa_${name} ]] && [[ ! -f ${HOME}/.ssh/id_rsa_${name}.pub ]]; then
  echo "Enter your email address for the RSA key:"
  read -r email_address
  ssh-keygen -t rsa -C "${email_address}" -f "${HOME}/.ssh/id_rsa_${name}" -P ''
fi

cp Vagrantfile "${HOME}/vagrant/${name}/Vagrantfile"
rm -rf "${HOME}/vagrant/${name}/scripts" &> /dev/null
cp -R scripts "${HOME}/vagrant/${name}/scripts"
