#!/usr/bin/env bash
# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  # Install Atom via Homebrew
  brew cask install atom
else
  # install Atom for linux
  # add package repo to system
  wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
  sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
  sudo apt-get update
  sudo apt-get install atom
fi

# if apm exists (atom CLI tools installed) install these packages
if which apm; then
  apm install aligner aligner-scss aligner-css aligner-javascript aligner-ruby atom-beautify \
  editorconfig linter-ui-default busy-signal esformatter fixmyjs git-diff-details git-history \
  git-plus language-markdown less-than-slash linter linter-eslint \
  linter-markdown linter-rubocop linter-tidy \
  markdown-writer sort-lines language-ember-htmlbars intentions linter-sass-lint \
  standardjs-snippets ruby-block open-in-browser
  atom .
  read -p "\n\nPlease wait for Atom to open, and then close it with CMD+Q on macOS (or CTRL+Q on Linux) and press Enter to continue\n"

  apm disable autocomplete-snippets
  # turn on autosave (manual check in package settings still part of installfest)
  apm enable autosave >> /dev/null 2>&1
else
  echo -e "\napm - command not found. Open Atom and select atom option at top, then 'Install Shell Commands'. Rerun script. If issues, ask for assistance. \n"
fi
