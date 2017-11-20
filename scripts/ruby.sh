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
  sudo apt-get install -y zlib1g-dev libffi-dev
fi

# install rbenv with homebrew
brew install rbenv

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

# check that rbenv is at latest version
if [[ $(rbenv --version) != 'rbenv 1.1.1' ]]; then
  echo -e "\n There may have been an issue installing rbenv. Please ask consultant for assistance. \n"
fi

# add bundler to default-gems file
echo bundler >> $(rbenv root)/default-gems

# install Ruby version
rbenv install 2.4.1
# set Ruby version used globally
rbenv global 2.4.1

# disable documentation generation for gem installations
echo 'gem: --no-document' >> ~/.gemrc
