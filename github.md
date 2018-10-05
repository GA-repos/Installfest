# Installfest

- [ ] **Github and Initial Setup**
- [ ] [Git](git.md)
- [ ] [Bash Configuration](bash.md)
- [ ] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [ ] [Homebrew (macOS only)](homebrew.md)
- [ ] [Node](node.md)
- [ ] [Ruby](ruby.md)
- [ ] [PostgreSQL](postgres.md)
- [ ] [MongoDB](mongodb.md)
- [ ] [Atom](atom.md)
- [ ] [Chrome](chrome.md)

## GitHub and Initial Setup

If you haven't done so already, go to [GitHub](http://www.github.com) and create
an account; be sure to write down your username and password somewhere, since
we'll be using these credentials later. Next, go to [GitHub Enterprise](https://git.generalassemb.ly) and create an account. It is recommended that you use the same username. This will be the source of your learning material throughout WDI, while your personal Github will be where you showcase your projects.


Now that you are set up with GitHub Enterprise, we want this repo on your local
computer. Please follow along as I show you how to fork, clone and put the repo
in the correct directory.

-   We need to [fork and clone](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone)
    this repo ([installfest](https://git.generalassemb.ly/ga-wdi-pvd/installfest)). Once you
    fork to your Github Enterprise account, make sure you copy the HTTPS clone link (It will
    look something like `https://git.generalassemb.ly/<your github name>/installfest.git`)

-   In your terminal, navigate to your home directory `cd ~`, then run `git clone <link copied from github>`. This will create a directory named `installfest` in your home folder `~/installfest/`

-   Change into the newly created `installfest` directory by typing `cd installfest`. This directory contains another directory named `scripts/` containing scripts that we will run to set up our machines!

-   We will be running scripts from the root of the `installfest` directory. This means at any time, your current working directory should be `~/installfest/`. Do not change into any other directories within `~/installfest/`

[Continue With Installfest](git.md)
