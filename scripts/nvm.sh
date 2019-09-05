#!/usr/bin/env bash

# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
# if the script is run with 0 arguments
  if [[ $# -eq 0 ]] ; then
    # install nvm with brew
    brew install nvm
    # create .nvm directory inside home directory
    mkdir -p ~/.nvm
    # search for the followign string in .bashrc
    if grep -Fq "export NVM_DIR=~/.nvm" ~/.bashrc
    then
      # if found, output success message to the terminal
      echo -e '\nAll set! ENV var for NVM_DIR already set in ~/.bashrc'
    else
      # if string is not in .bashrc, add the following lines to .bashrc
  cat <<'EOF' >> ~/.bashrc

  export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh

EOF
    fi
  fi

  # if script is run with argument 'node'
  if [[ $1 = "node" ]]; then
    # source nvm for the environment of this script execution
    . "$(brew --prefix nvm)/nvm.sh"
    # install version 10.15.0
    nvm install v10.15.0
    # set version 10.15.0 as default node version
    nvm alias default v10.15.0
  fi
else
  # if OS is Linux
  # if the script is run with zero arguments
  if [[ $# -eq 0 ]] ; then
    # curl a script to install NVM_DIR
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
  fi

  # if script is run with argument node
  if [[ $1 = "node" ]]; then
    # source NVM
    source "$NVM_DIR/nvm.sh"
    # install node LTS
    nvm install v10.15.0
    # set version 10.15.0 as default node version
    nvm alias default v10.15.0
  fi
fi

echo -e "\nRestart your terminal\n"
