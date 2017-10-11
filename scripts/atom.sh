#!/usr/bin/env bash
# if apm exists (atom CLI tools installed) install these packages
if which apm; then
  apm install aligner aligner-scss aligner-css aligner-javascript aligner-ruby atom-beautify \
  editorconfig linter-ui-default busy-signal esformatter fixmyjs git-diff-details git-history \
  git-plus language-markdown less-than-slash linter linter-csslint linter-eslint \
  linter-markdown linter-rubocop linter-ruby linter-tidy \
  markdown-writer sort-lines language-ember-htmlbars intentions linter-sass-lint \
  standardjs-snippets

  apm disable autocomplete-snippets
  # turn on autosave (manual check in package settings still part of installfest)
  apm enable autosave
else
  echo -e "\napm - command not found. Open Atom and select atom option at top, then 'Install Shell Commands'. Rerun script. If issues, ask for assistance. \n"
fi
