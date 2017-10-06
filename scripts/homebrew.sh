#!/usr/bin/env bash
if [[ $# -eq 0 ]] ; then
  if [[ $(uname -s) = 'Darwin' ]]; then
    #MAC
    sudo chown -R $(whoami):admin /usr/local
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    #LINUX
    sudo apt-get install build-essential curl git python-setuptools ruby
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

    echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.bashrc
  fi

  brew doctor
fi

#pass update as arg once brew doctor issues resolved
if [[ $1 = "update" ]]; then
  brew update
  brew install tidy-html5
  brew install libsass
fi
