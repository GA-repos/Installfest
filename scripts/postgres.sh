#!/usr/bin/env bash
# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  # install postgres via homebrew
  brew install postgres

  # start postgres
  brew services start postgres

  # wait a few seconds to allow the service to start
  sleep 3s

  # create database with current system username `whoami`
  createdb
else
  # install postgres and build dependency
  sudo apt-get install -y postgresql libpq-dev
  # create user in postgres with name of current system user
  sudo -u postgres createuser "$(whoami)" -s
  # create database with name of current system user
  sudo -u postgres createdb "$(whoami)"
  # start postgres server
  sudo service postgresql start
fi

# Resource bashrc
  source ~/.bashrc
