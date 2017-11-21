# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration (macOS only)](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [ ] **Homebrew**
- [ ] [Node](node.md)
- [ ] [Ruby](ruby.md)
- [ ] [PostgreSQL](postgres.md)
- [ ] [Atom](atom.md)
- [ ] [Chrome](chrome.md)

## Homebrew

[Homebrew](https://brew.sh/) is a package manager for macOS that makes installing software and useful tools easy.

**If you are on a Linux-based OS, like Ubuntu, you already have a tool that does the
same things as Homebrew. You're all set! You can move on to the next step. Scroll down and click "Continue with Installfest."**


For those on OSX:

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
scripts/homebrew.sh update
```

[Continue With Installfest](node.md)
