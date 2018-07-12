#!/usr/bin/env bash

set -e

if [[ $(uname -s) = 'Darwin' ]]; then

  brew install mongodb

  brew services restart mongodb

else

  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

  echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

  sudo apt update

  if grep -q Microsoft /proc/version; then

    sudo mkdir -p /data/db

    sudo chown `whoami` /data/db

    sudo apt-get install -y mongodb
    
    sudo service mongodb start 
      
  else

    sudo apt install -y mongodb-org

    sudo service mongod start
  fi
fi

echo "MongoDB appears to have installed succesfully. Follow the steps in the instructions to verify."
