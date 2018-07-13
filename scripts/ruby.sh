#!/usr/bin/env bash
# if rvm is installed
if which rvm; then
  # prompt for destructive action of removing rvm
  read -r -p "Are you sure you would like to remove rvm? [y/n] " response
  # if response is any case combination of 'Yes' or 'y'
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
  then
    # remove rvm
    rvm implode
  fi
fi

# if operating system is NOT macOS
if [[ $(uname -s) != 'Darwin' ]]; then
  # install build dependency for rbenv
  sudo apt-get update
  sudo apt-get install -y zlib1g-dev libffi-dev gnustep-gui-runtime libssl-dev libreadline-dev

  # install rbenv by cloning from github
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv

  # add rbenv to $PATH
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
else
  # install rbenv with homebrew on OSX only
  brew install rbenv
fi

# search for the following string in .bashrc
if grep -Fq "which rbenv > /dev/null" ~/.bashrc
then
  # if string is found in .bashrc, output following message to terminal
  echo -e '\nAll set! rbenv setup already added to ~/.bashrc\n'
else
  # if string is not found add the following lines to .bashrc
  # on startup of terminal, this will check if rbenv exists
  # if it does, it will initialize rbenv, adding its location to PATH
cat <<'EOF' >> ~/.bashrc
# Rbenv
if which rbenv > /dev/null; then
   eval "$(rbenv init -)"
fi
EOF

fi

# source bashrc so that the rbenv command is available in this script
source ~/.bashrc

# on Ubuntu that's not enough to update $PATH
# TODO: find out why, but update it manually for now
PATH="$HOME/.rbenv/bin:$PATH"

# initialize rbenv for this script environment
eval "$(rbenv init -)"

# installs shims for all ruby executables
rbenv rehash

# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  brew install ruby-build
else
  # if operating system is NOT macOS
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

# install Ruby version
rbenv install 2.5.0
# set Ruby version used globally
rbenv global 2.5.0

# disable documentation generation for gem installations
echo 'gem: --no-document' >> ~/.gemrc

# update to latest version of RubyGems
gem update --system

# install default gems
gem install byebug pry rails rubocop

echo $'\nPlease restart your terminal!'
