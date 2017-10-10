# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration (macOS only)](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [ ] [Homebrew](homebrew.md)
- [ ] [Node](node.md)
- [ ] [Ruby](ruby.md)
- [ ] [PostgreSQL](postgres.md)
- [ ] [Atom](atom.md)
- [ ] [Chrome](chrome.md)

## Homebrew

[Homebrew](https://brew.sh/) is a package manager for macOS that makes installing software and useful tools easy. If you are on Linux, the following script will install [Linuxbrew](http://linuxbrew.sh/), a modified version of Hombrew, compatible with Linux.

- We will now execute a script to install Homebrew. Enter the following command
  into your terminal.

    ```bash
  scripts/homebrew.sh
    ```

**NOTE: YOUR SYSTEM WILL PROBABLY THROW SOME ERRORS HERE!**

Most of these
errors are probably minor, but some might not be. Please wait until one of the
consultants has given you the go-ahead before moving on.

-   After resolving errors, in your terminal, run:

```bash
brew doctor
```

-   Once Homebrew says `Your system is ready to brew`, run the following command

```bash
config/homebrew.sh update
```

[Continue With Installfest](node.md)
