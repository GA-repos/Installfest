#!/usr/bin/env bash

if [[ $SHELL != '/bin/bash' ]]; then
  echo "shell was $SHELL" 
  echo 'changing shell to bash...'
  chsh -s /bin/bash "$(whoami)"
  printf '\nRESTART YOUR TERMINAL NOW to load the new bash shell\n'
else
  echo 'shell is already bash'
fi

# if operating system is macOS or Ubuntu Linux on WSL for Windows 10
if [[ $(uname -s) = 'Darwin' ]] || [[ "$(grep -c Microsoft /proc/version)" -ge 1 ]]; then
  # create .bashrc file in home directory
  touch ~/.bashrc
  # create .bash_profile file in home directory
  touch ~/.bash_profile
  # add the following string to .bash_profile
  # on startup of bash, it will test if the ~/.bashrc file exists
  # if it does exist, it will also source it
  echo 'test -f ~/.bashrc && source ~/.bashrc' >> ~/.bash_profile

  # if the following string is in ~/.bash_profile
  if grep -Fxq "test -f ~/.bashrc && source ~/.bashrc" ~/.bash_profile; then
    # output success message to terminal
    echo $'\nLooks good!'
  else
    # throw error because searched string wasn't added to .bash_profile
    echo $'\nOh No! It looks like there was an issue. Ask for assistance before continuing.'
    read -p "Press [ENTER] to continue."
  fi
# if Ubunutu Linux on WSL for Windows 10
elif grep -q Microsoft /proc/version; then

  # set up symlink to ~/winhome (Window 10 %userprofile% dir) and start bash sessions there
  USERNAME="$(cmd.exe /c echo %username% | sed 's/ /\\ /g' | tr -dc '[[:print:]]')"
  COMMAND="ln -sF /mnt/c/Users/$USERNAME/ ~/winhome"
  eval $COMMAND
  echo 'cd ~/winhome' >> ~/.bash_profile
  echo 'Set up your Windows Home directory at "~/winhome".'
  echo 'All Set. Move on to the next section.'
else
  echo 'All set. Move on to the next section.'
fi
