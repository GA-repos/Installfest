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
  # start postgres server
  sudo service postgresql start
  # wait a few seconds to allow the service to start
  sleep 3s
  # create user in postgres with name of current system user
  sudo -u postgres createuser "$(whoami)" -s
  # create database with name of current system user
  sudo -u postgres createdb "$(whoami)"
fi

if grep -q Microsoft /proc/version 1>/dev/null 2>/dev/null; then
  # windows sets up template1 as an 'ASCII_SQL' encoding which won't work with rails
  # here, we change template1 to 'UNICODE' encoding
  psql -c "UPDATE pg_database SET datistemplate=FALSE WHERE datname='template1';" &> /dev/null
  psql -c "DROP DATABASE template1;" &> /dev/null
  psql -c "CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE';" &> /dev/null
  psql -c "UPDATE pg_database SET datistemplate=TRUE WHERE datname='template1';" &> /dev/null
  psql -c "\c template1;" &> /dev/null
  psql -c "VACUUM FREEZE;" &> /dev/null
fi

# Resource bashrc
  source ~/.bashrc

# install postgres gem for rails
gem install pg
