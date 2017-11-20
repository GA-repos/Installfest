#!/usr/bin/env bash
# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  # create .bashrc file in home directory
  touch ~/.bashrc
  # create .bash_profile file in home directory
  touch ~/.bash_profile
  # add the following string to .bash_profile
  # on startup of bash, it will test if the ~/.bashrc file exists
  # if it does exist, it will also source it
  echo 'test -f ~/.bashrc && source ~/.bashrc' >> ~/.bash_profile

  # if the following string is in ~/.bash_profile
  if grep -Fxq "test -f ~/.bashrc && source ~/.bashrc" ~/.bash_profile
  then
    # output success message to terminal
    echo $'\nLooks good!'
  else
    # throw error because searched string wasn't added to .bash_profile
    echo $'\nOh No! It looks like there was an issue. Ask for assistance before continuing.'
    read -p "Press [ENTER] to continue."
  fi

fi
