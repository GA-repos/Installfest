# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Homebrew (macOS only)](homebrew.md)
- [x] [Node](node.md)
- [x] [Ruby](ruby.md)
- [x] [Postgres](postgres.md)
- [ ] **MongoDB**
- [ ] [Atom](atom.md)
- [ ] [Chrome](chrome.md)

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

Run `brew services list`. You should see `mongodb` with the word "started" to
the right of it.

### Ubuntu

Run `service mongod status`. You should see a green circle and the words
"active (running)" somewhere in the output.

### Windows 10

Run `sudo service monogodb status`. You should see "[OK]" somewhere in the output.

### On any OS

If the service appears to be running, type `mongo` and hit enter.

You should see something like this:
```
MongoDB shell version v3.4.10
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.4.10
```
possibly followed by some warnings/errors. Ignore these warnings/errors for now.
You should notice that your command prompt is gone, replaced with a `>`.
This means the MongoDB shell installed correctly. Press `Ctrl + c` to get back
to your terminal.

[Continue With Installfest](atom.md)
