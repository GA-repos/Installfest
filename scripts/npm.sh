#!/usr/bin/env bash
# install these npm packages globally
npm install --global npm jsonlint eslint grunt-cli remark-lint phantomjs-prebuilt nodemon node-sass
# Don't allow devs to "fix" npm vulnerabilities for now
npm set audit false
