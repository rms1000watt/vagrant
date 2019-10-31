#!/usr/bin/env bash

echo "Checking Deps..."

if ! which vagrant &> /dev/null; then
  brew cask install vagrant
fi

if ! which virtualbox &> /dev/null; then
  brew cask install virtualbox
fi

if [[ ! -d "/Applications/Vagrant Manager.app" ]]; then
  brew cask install vagrant-manager
fi

if ! vagrant plugin list | grep -q vagrant-disksize; then
  vagrant plugin install vagrant-disksize
fi

echo "Moving files to ~/vagrant"

mkdir ~/vagrant &> /dev/null
cp Vagrantfile ~/vagrant/Vagrantfile
rm -rf ~/vagrant/scripts &> /dev/null
cp -R scripts ~/vagrant/scripts
