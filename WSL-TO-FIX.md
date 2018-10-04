# Installfest
see pull request

# Git / GitHub

Windows users will be using nano to save their commit messages. provide some instructions

# Ruby Object Self

- `say` method not working on non macOS systems because it's not there. Had a few students try `sudo apt-get install gnustep-gui-runtime` to get the say command, but no go.

# Heroku Setup

- Installing Heroku CLI: `snap` does not work on Win10 because SystemD is not supported and `snap` is a SystemD service. It may also not be working on regular Ubunut. Instead, use:

```sh
curl https://cli-assets.heroku.com/install.sh | sh
```

# Mongodb

- somehow students had a 2.8.x version of `mongo` installed which didn't have newer methods like `deleteMany` which was used in the lesson. In order to upgrade (to 3.2.2.0), they had to run:
  ```bash
  sudo apt-get update
  sudo apt-get install mongodb-org
  sudo mkdir -p /data/db
  sudo chown `whoami` /data/db
  sudo service mongodb start
  ```
- this should not be an issue in the future as new WSL installs will have a more recent `apt` package lists
