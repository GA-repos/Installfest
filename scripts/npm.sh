#!/usr/bin/env bash
# install these npm packages globally
npm install --global npm jsonlint eslint grunt-cli remark-lint phantomjs-prebuilt
# if Ubunutu Linux on WSL for Windows 10
if grep -q Microsoft /proc/version; then
    npm install --global wsl-open
fi