# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [ ] **Homebrew (macOS only)**
- [ ] [Node](node.md)
- [ ] [Ruby](ruby.md)
- [ ] [PostgreSQL](postgres.md)
- [ ] [MongoDB](mongodb.md)
- [ ] [Atom](atom.md)
- [ ] [Chrome](chrome.md)

## Homebrew

[Homebrew](https://brew.sh/) is a package manager for macOS that makes installing software and useful tools easy.

**If you are on a Linux-based OS, like Ubuntu, you won't need Homebrew.** Your
system includes a package manager that serves the same purpose. The script below
will automatically detect if you're on Linux, and if you are, it won't install
Homebrew. Instead, it will install a few tools that are needed on Linux for the
rest of Installfest.

-  Enter the following command into your terminal.

    ```bash
    scripts/homebrew.sh
    ```

-  If you're on OSX continue with the steps below. If you're using a Linux-based OS, scroll down and click "Continue With Installfest".

## OSX only:

The last script may have displayed some errors. That's probably OK!

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
