#!/usr/bin/env bash

# if operating system is NOT macOS
if [[ $(uname -s) != 'Darwin' ]]; then
  # install python and pip
  sudo apt-get update
  sudo apt-get install -y python3.7 python3-pip
  # install
  pip3 install pipenv pylint
  # print success
  echo 'python3 ––version'
else
  # install python, pipenv homebrew on OSX only
  brew install python pipenv
  pip3 install pylint
fi
