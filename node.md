# Installfest

## Node

We're going to be installing Node. Node (and its various packages) will be
the foundation of a large part of the course.

### NVM (Node Version Manager)

First, we're going to
install a tool called [NVM](https://github.com/creationix/nvm) that allows us
to maintain multiple different versions of Node, in case we want to switch
between them for different projects.

```bash
scripts/nvm.sh
```

**Restart your terminal (close it and reopen it; not just the window!)**
  - On macOS, this can be done with the keyboard shortcut, (&#8984; + Q)

### Node
Now we can install Node!

Run the following command in your terminal:

```bash
scripts/nvm.sh node
```

**AGAIN, Restart your Terminal**

### NPM Packages
Now, we will use Node's associated package manager, `npm`, to download and install some Node
modules and make them available across all of our projects.

```bash
scripts/npm.sh
```
