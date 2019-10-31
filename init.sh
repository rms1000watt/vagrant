#!/usr/bin/env bash

name=devops
if [[ -n $1 ]]; then
  name=$1
fi

echo "Checking Deps..."

if ! command -v vagrant &> /dev/null; then
  brew cask install vagrant
fi

if ! command -v virtualbox &> /dev/null; then
  brew cask install virtualbox
fi

if [[ ! -d "/Applications/Vagrant Manager.app" ]]; then
  brew cask install vagrant-manager
fi

if ! vagrant plugin list | grep -q vagrant-disksize; then
  vagrant plugin install vagrant-disksize
fi

echo "Moving files to ${HOME}/vagrant/${name}"

mkdir -p "${HOME}/vagrant/${name}" &> /dev/null
cp Vagrantfile "${HOME}/vagrant/${name}/Vagrantfile"
rm -rf "${HOME}/vagrant/${name}/scripts" &> /dev/null
cp -R scripts "${HOME}/vagrant/${name}/scripts"
