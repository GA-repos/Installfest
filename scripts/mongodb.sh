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

    mkdir -p ~/.services

    cat << 'EOF' > ~/.services/init
sudo service mongodb start >/dev/null 2>&1 & 
sudo service postgresql start >/dev/null 2>&1 & 
EOF
    
    sudo chown -R root ~/.services

    sudo chmod -R 755 ~/.services

    echo "$(whoami)      ALL = (root) NOPASSWD: $HOME/.services/init" | sudo EDITOR='tee -a' visudo

    echo "sudo ~/.services/init" >> ~/.bash_profile
    
  else

    sudo apt install -y mongodb-org

    sudo service mongod start
  fi
fi

echo "MongoDB appears to have installed succesfully. Follow the steps in the instructions to verify."
