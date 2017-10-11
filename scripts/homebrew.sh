#!/usr/bin/env bash
# if the script is run with 0 arguments
if [[ $# -eq 0 ]] ; then
  # if operating system is macOS
  if [[ $(uname -s) = 'Darwin' ]]; then
    # change ownership of /usr/local and contents to current user
    # change group of directory and contents to admin
    sudo chown -R $(whoami):admin /usr/local
    # use installed version of ruby to execute curl command to install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    # if operating system is linux
    # install the following tools
    sudo apt-get install build-essential curl git python-setuptools ruby
    # use ruby to execute curl request to install linuxbrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    # add location of linuxbrew to PATH for this script only
    PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    # add following string to .bashrc
    # this will make sure linuxbrew is in PATH
    # ensure use linuxbrew version of software instead of other versions installed
    echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.bashrc
  fi

  brew doctor
fi

# if script is run with argument 'update'
if [[ $1 = "update" ]]; then
  # update homebrew and install following packages
  brew update
  brew install tidy-html5
  brew install libsass
fi
