# Installfest

- Install Choclatey with or without Atom install being detected
- see pull request

# Git / GitHub

Windows users will be using nano to save their commit messages. provide some instructions

# Ruby Object Self

- `say` method not working on non macOS systems because it's not there. Had a few students try `sudo apt-get install gnustep-gui-runtime` to get the say command, but no go.

# Heroku Setup

- Installing Heroku CLI: `snap` does not work on Win10 because SystemD is not supported and `snap` is a SystemD service. It may also not be working on regular Ubunut. Instead, use:

```sh
curl https://cli-assets.heroku.com/install.sh | sh
```
