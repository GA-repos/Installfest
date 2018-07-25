# Installfest
see pull request

# Git / GitHub

Windows users will be using nano to save their commit messages. provide some instructions

# Unix-CLI

for `open` to work, you need *macOS*

- On **Linux**, use `xdg-open` instead
  - if you don’t already have it, use this to install: `sudo apt-get install xdg-open`
- On **Windows 10**, use `wsl-open` instead
  - if you don’t already have it, use this to install: `npm install wsl-open -g`

# jquery-axax-*

If you copy and paste data from a Windows application, it will inclue `CRLF` line
breaks where instead, you want `LF` line breaks. Having these `CRLF` line breaks
instead of `LF` will cause bash to produce `IILEGAL CHARACTER` errors often when
you try and use the copied data (say for example, you copied a curl request from 
your browser into a new script `.sh` file). In order to fix this, I had the students
run this:

```bash
sudo apt-get install dos2unix

cat <<'EOF' >> ~/.bashrc
d2u () {
    dos2unix -n $1 $1
}
EOF

```

FROM NOW ON, in order to fix any file that is giving this issue, run this: 
`d2u <your file>`

**UPDATE**: this is much better. You can set default line endings in both Atom
and VSCode using the following:
```bash

# ATOM_SETTINGS="~/.atom/config.cson"
ATOM_SETTINGS="%USERPROFILE%\.atom\config.cson"
awk 'f{$0="    defaultLineEnding: \"LF\"";f=0}/line-ending-selector/{f=1}1' ~/.atom/config.cson > temp.cson
cp temp.cson ~/.atom/config.cson
cat ~/.atom/config.cson
rm temp.cson


# CODE_SETTINGS="$HOME/Library/Application Support/Code/User/settings.json"
CODE_SETTINGS="%APPDATA%\Code\User\settings.json"
cat $CODE_SETTINGS | jq '.["files.eol"] |= "\n"' > temp.cson
cp temp.cson $CODE_SETTINGS
rm temp.cson
```

# Ruby Object Self

- `say` method not working on non macOS systems because it's not there. Had a few students try `sudo apt-get install gnustep-gui-runtime` to get the say command, but no go.

# Heroku Setup

- Installing Heroku CLI: `snap` does not work on Win10 because SystemD is not supported and `snap` is a SystemD service. It may also not be working on regular Ubunut. Instead, use:

```sh
curl https://cli-assets.heroku.com/install.sh | sh
```
