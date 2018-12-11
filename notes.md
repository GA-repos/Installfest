# Notes

## Common Problems

Here is a list of common issues encountered during installfest

### PATH issues

**Problem** Using default version of Ruby or Node (not the ones installed
through homebrew with rbenv and nvm)

`/bin` should not be in the location of the software we use

- `which ruby` should output something like `/Users/<username>/.rbenv/shims/ruby`

- `which node` should output something like `/Users/<username>/.nvm/versions/node/v<node_version>/bin/node`

In the result of `echo $PATH`
the location of rbenv and nvm should come before `/usr/local/bin`

**Solution** Ensure that nvm and rbenv were installed correctly

- Issues with ruby
  - The `ruby.sh` script adds the following snippet to ~/.bashrc that sets up
    the path for rbenv. Make sure it was successfully added.

  ```bash
  if which rbenv > /dev/null; then
    eval "$(rbenv init -)"
  fi
  ```

- Issues with node
  - The `nvm.sh` script adds the following snippet to ~/.bashrc that sets up the
    path for node. Make   sure it was successfully added.

    ```bash
    . $(brew --prefix nvm)/nvm.sh
    ```

### ESlint in Atom

**Problem** Pop ups in Atom in JavaScript file complaining about ESlint

**Solution** ESlint should be disabled if no config file is found in repo. This
is the default, but sometimes doesn't get set

![ESlint Atom Settings](https://git.generalassemb.ly/storage/user/5689/files/de279074-421a-11e7-9048-a21212958785)

## Cohort Refresh

Some maintenance must be kept on this repository. For each cohort:

1. Make sure technology versions are consistent with what templates are using
  - check `node` version in [nvm.sh](nvm.sh)

  ```bash
  nvm install --lts=boron || nvm install <number_version_of_node>
  ```

  - check `ruby` version in [ruby.sh](ruby.sh)

  ```bash
  rbenv install <ruby_version>
  rbenv global <ruby_version>
  ```

2. Try to resolve and close (or at least have discussion about) open issues

3. Make sure screenshot of Chrome settings is up to date [Chrome](chrome.md)

## WSL Notes

WSL (Windows Subsystem for Linux) provides a solution for Windows-machine based
developers to use the OS they are familiar with and the machine they already
have, in order to complete the WDI course materials. Although WSL use is 95% the
same as OSX/Ubuntu usage, there are some quirks that need to be considered and
occasionally managed. This document is meant to help consultants and developers
deal with those quirks.

### Prerequisites

- [WSL-compatible Installfest](https://git.generalassemb.ly/ga-wdi-pvd/installfest)

### Objectives

- Inform developers and consultants about common quirks, issues, and fixes
  specific to bash usage on WSL

### Getting Set Up

Make sure you have run through WSL-compatible Installfest carefully if you are
a developers, and make sure you are helping a developers with a machine that was
set up with WSL using our installfest repo if you are an instructor.

### Notes: Files and Folders

#### Editing Files

- You can ONLY edit **Windows** file system files with **Atom** (or any other
  **Windows**-based text editor)
- There is a symlink (ie a shortcut) to the **Windows** home directory for your
  **Windows** user (located at `C:/Users/<windows-user-name>`) in **bash** at
  `~/winhome`
  - Always make, download, clone, edit, and otherwise manipulate files within
  <u>only</u> within the `~/winhome` directory.
  - The full bash path represented by the `~/winhome` shortcut is `/mnt/c/Users/<windows-user-name`
  - Do not attempt to edit any files anywhere else in a subdirectory of the root
  of your **bash** filesystem (`/`). **Atom** is smart enough to tell you that
  you cannot do this, other text editors may let you edit these files which will
  <u>CORRUPT YOUR LINUX FILESYSTEM</u>
  - If you need to edit **bash** files directly such as `~/.bash_profile`, use
  `vim` or `nano`
  - [See here for more details](https://git.generalassemb.ly/ga-wdi-pvd/installfest/blob/master/atom.md#editing-files-in-windows-10)

#### Trying to Modify Files that Are Being Used

- Unlike OSX or Linux, WSL does not let you modify files that are open inside
  another program. You must first close the program, then you can modify the
  file.

### Notes: Atom

#### Installing Packages

- Use the GUI package manager in **Atom**
- If you really want to use the command line, find **Command Prompt** in the
  Start Menu, right click and select _“Run as Administrator”_ and use
  `apm install <package-name>` there to install packages

#### Using **bash** based binaries as linters in **Atom**

- **Atom** is a **Windows** based app, but many of our linters are based in
  **bash**. Linters such as `rubocop` are **bash** binaries. The way we can use
  most **bash** binaries as executables in **Atom** is by wrapping them in a
  little **batch** script (**batch** is the scripting language of **Windows**)

- This is how it was done for `rubocop`
  - **batch** wrapper script
    - path of wrapper script: `~/winhome/.atom/rubocop.bat`
    - script contents:
      ```batch
      @echo off
      bash.exe -c "$(rbenv which rubocop) %\*"
      ```
  - **Atom** settings to get this to work
    - path of atom config: `~/winhome/.atom/config.cson`
    - relevant **Atom** setting:
      ```batch
      "linter-rubocop"
          Command: "/Users/<windows user name>/.rbenv/versions/2.5.0/bin/rubocop"
      ```

_TBD_

### Troubleshooting

_TBD_

### Additional Resources

_TBD_