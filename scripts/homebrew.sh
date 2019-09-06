#!/usr/bin/env bash
. ./scripts/parse_yaml.sh
eval $(parse_yaml ./scripts/config.yml "config_")

# if the script is run with 0 arguments
if [[ $# -eq 0 ]] ; then
  # if operating system is macOS
  if [[ $(uname -s) = 'Darwin' ]]; then
    # change ownership of /usr/local and contents to current user
    # change group of directory and contents to admin
    sudo chown -R "$(whoami):admin" /usr/local
    # use installed version of ruby to execute curl command to install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # check for issues with the brew installation
    brew doctor
  else
    # make it so that if any of these installs fail, the script will exit
    set -e

    # if operating system is linux
    sudo apt-get update
    sudo apt-get install -y curl
    sudo apt-get install -y tidy

    # The following is all to install watchman
    cd /tmp
    git clone https://github.com/facebook/watchman.git
    cd watchman
    git checkout v$config_watchman_version
    sudo apt install -y autoconf automake build-essential python-dev libssl-dev libtool
    ./autogen.sh
    ./configure --enable-lenient
    make
    sudo make install

    # Raise `inotify` limit for watchman
    echo 999999 | sudo tee -a /proc/sys/fs/inotify/max_user_watches     && \
        echo 999999 | sudo tee -a /proc/sys/fs/inotify/max_queued_events  && \
        echo 999999 | sudo tee -a /proc/sys/fs/inotify/max_user_instances && \
        watchman shutdown-server


    echo $'\nAll set! Your'e on Linux, so you don\'t need to continue with homebrew.md. Click "Continue with Installfest".
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
