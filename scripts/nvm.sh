#!/usr/bin/env bash
. ./scripts/parse_yaml.sh

eval $(parse_yaml ./scripts/config.yml "config_")

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
    # install version defined in config.yml
    nvm install v$config_nvm_version
    # set version as default node version
    nvm alias default v$config_nvm_version
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
    nvm install v$config_nvm_version
    # set version defined in config.yml as default node version
    nvm alias default v$config_nvm_version
  fi
fi

echo -e "\nRestart your terminal\n"
