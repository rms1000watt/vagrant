#!/usr/bin/env bash

set -e

sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
