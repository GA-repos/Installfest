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
