#!/usr/bin/env bash
if [[ $(uname -s) = 'Darwin' ]]; then
  brew install postgres

  # create symbolic link for postgres in LaunchAgents
  ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

  # start postgres at login
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

  # create database with current username `whoami`
  createdb
else
  sudo apt-get install postgresql libpq-dev
  sudo -u postgres createuser `whoami` -s

  sudo -u postgres createdb `whoami`
fi

gem install pg
