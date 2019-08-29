#!/usr/bin/env bash

set -e

if [[ $(uname -s) = 'Darwin' ]]; then
  brew install mongodb

  brew services restart mongodb
else
  sudo apt update

  sudo apt install -y mongodb

  sudo systemctl start mongodb
fi

echo "MongoDB appears to have installed succesfully. Follow the steps in the instructions to verify."
