#!/usr/bin/env bash

set -e

if ! command -v tightvncserver &> /dev/null; then
  sudo apt install tightvncserver -y

  cat << EOF > /home/vagrant/vnc.expect
  spawn vncserver :1
  expect "Password:"
  send "vagrant\r"
  expect "Verify:"
  send "vagrant\r"
  expect "Would you like to enter a view-only password (y/n)?"
  send "n\r\r"
EOF
  # expect /home/vagrant/vnc.expect

else
  echo "Skipping tightvncserver installation"
fi

# if ! ps aux | grep tightvnc &> /dev/null; then
#   if [[ -f /home/vagrant/.vnc/xstartup ]]; then
#     vncserver :1
#   else
#     expect /home/vagrant/vnc.expect
#   fi
# fi
