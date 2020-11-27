# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [ ] **Homebrew**
- [ ] [Node](node.md)
- [ ] [Python](python.md)
- [ ] [Chrome](chrome.md)
- [ ] [VS Code](vscode.md)

## Homebrew

[Homebrew](https://brew.sh/) is a package manager for macOS that makes installing software and useful tools easy.

If you are on a Linux-based OS, like Ubuntu, you won't use Homebrew, **but
you must still run this script**. Your
system includes a package manager that serves the same purpose. The script below
will automatically detect if you're on Linux, and if you are, it won't install
Homebrew. Instead, it will install a few tools that are needed on Linux for the
rest of Installfest.

Enter the following command into your terminal.

```bash
scripts/homebrew.sh
```

The last script may have displayed some errors. That's probably OK!

Most of these
errors are probably minor, but some might not be. Please wait until one of the
consultants has given you the go-ahead before moving on.

When you're ready to procede, run:

```bash
scripts/homebrew.sh update
```

[Continue With Installfest](node.md)
