#!/usr/bin/env bash
if [[ $(uname -s) = 'Darwin' ]]; then
  touch ~/.bashrc

  touch ~/.bash_profile

  echo 'test -f ~/.bashrc && source ~/.bashrc' >> ~/.bash_profile

  if grep -Fxq "test -f ~/.bashrc && source ~/.bashrc" ~/.bash_profile
  then
    echo "\nLooks good!"
  else
    echo "\nOh No! It looks like there was an issue. Ask for assistance before continuing."
    read -p "Press [ENTER] to continue."
  fi

fi

cat /etc/paths
