# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Homebrew](homebrew.md)
- [x] [Node](node.md)
- [x] [Python](python.md)
- [x] [Postgres](postgres.md)
- [ ] **MongoDB**
- [ ] [Chrome](chrome.md)
- [ ] [VS Code](vscode.md)

## MongoDB

We'll now install MongoDB, another open source database. To do that,
type:

```
scripts/mongodb.sh
```

If you got any errors there, please let a consultant know. Otherwise, you can
verify that MongoDB is working correctly by running one of the following
commands:

### macOS

Run `brew services list`. You should see `mongodb-community` with the word "started" to
the right of it.

### Ubuntu

Run `sudo systemctl status mongodb`. You should see a green circle and the words
"active (running)" somewhere in the output.

### On either OS

If the service appears to be running, type `mongo` and hit enter.

You should see something like this:

```
MongoDB shell version v4.2.0
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 4.2.0
```

possibly followed by some warnings/errors. Ignore these warnings/errors for now.
You should notice that your command prompt is gone, replaced with a `>`.
This means the MongoDB shell installed correctly. Press `Ctrl + c` to get back
to your terminal.

[Continue With Installfest](atom.md)
