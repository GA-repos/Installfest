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
    # check for issues with the brew installation
    brew doctor
  else
    # if operating system is linux
    sudo apt-get update
    sudo apt-get install curl
    sudo apt-get install tidy
  fi
fi

# if script is run with argument 'update'
if [[ $1 = "update" ]]; then
  # if operating system is OSX
  if [[ $(uname -s) = 'Darwin' ]]; then
    # update homebrew and install following packages
    brew update
    brew install tidy-html5
    brew install libsass
    brew install watchman
  else
    echo $'\nYou\'re still all set! Please move on to the next step.\n'
  fi
fi
