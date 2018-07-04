#!/usr/bin/env bash
# install these npm packages globally
npm install --global npm jsonlint eslint grunt-cli remark-lint phantomjs-prebuilt
# if Ubunutu Linux on WSL for Windows 10
if grep -q Microsoft /proc/version; then
    npm install --global wsl-open

    # alias wsl-open to `open` so it works just like on Mac
    echo "alias open='wsl-open'" >> ~/.bash_profile
fi