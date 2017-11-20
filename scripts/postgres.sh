#!/usr/bin/env bash
# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  # install postgres via homebrew
  brew install postgres

  # create symbolic link for postgres in LaunchAgents
  ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

  # start postgres at login
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

  # create database with current system username `whoami`
  createdb
else
  # install postgres and build dependency
  sudo apt-get install postgresql libpq-dev
  # create user in postgres with name of current system user
  sudo -u postgres createuser `whoami` -s
  # create database with name of current system user
  sudo -u postgres createdb `whoami`
fi
# install postgres gem for rails
gem install pg
