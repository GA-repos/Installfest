#!/usr/bin/env bash

# if operating system is Ubuntu on Windows
if grep -q Microsoft /proc/version 1>/dev/null 2>/dev/null; then
    # install atom
    yes | cp -rf scripts/wsl/atom_install.bat ~/winhome
    cmd="powershell.exe -command Start-Process powershell -Verb runAs -ArgumentList 'cd \$env:HOMEPATH;./atom_install.bat'"
    $cmd

    # set up ATOM to have correct line endings (LF) by default
    ATOM_SETTINGS="%USERPROFILE%\.atom\config.cson"
    awk 'f{$0="    defaultLineEnding: \"LF\"";f=0}/line-ending-selector/{f=1}1' ~/.atom/config.cson > temp.cson
    cp temp.cson ~/.atom/config.cson
    cat ~/.atom/config.cson
    rm temp.cson
    exit
fi

# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  # Install Atom via Homebrew
  brew cask install atom
else
  # install Atom for linux
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt update
  sudo apt install atom 
fi

# if apm exists (atom CLI tools installed) install these packages
if which apm; then
  apm install aligner aligner-scss aligner-css aligner-javascript aligner-ruby atom-beautify \
  editorconfig linter-ui-default busy-signal esformatter fixmyjs git-diff-details git-history \
  git-plus language-markdown less-than-slash linter linter-stylelint linter-eslint \
  linter-markdown linter-rubocop linter-tidy \
  markdown-writer sort-lines language-ember-htmlbars intentions linter-sass-lint \
  standardjs-snippets ruby-block open-in-browser 
  atom .
  read -p "Please wait for Atom to open, and then close it with CMD+Q on macOS (or CTRL+Q on Linux) and press Enter to continue"

  apm disable autocomplete-snippets
  # turn on autosave (manual check in package settings still part of installfest)
  apm enable autosave >> /dev/null 2>&1
else
  echo -e "\napm - command not found. Open Atom and select atom option at top, then 'Install Shell Commands'. Rerun script. If issues, ask for assistance. \n"
fi
