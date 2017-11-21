# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration (macOS only)](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Homebrew](homebrew.md)
- [x] [Node](node.md)
- [x] [Ruby](ruby.md)
- [ ] **PostgreSQL**
- [ ] [Atom](atom.md)
- [ ] [Chrome](chrome.md)

## PostgreSQL

We will be installing PostgreSQL, an open source relational database management system. In WDI, we will be writing SQL (structured query language) and maintaining our relational databases using Postgres.

Enter the following command in your terminal

```bash
scripts/postgres.sh
```

- To ensure Postgres is running on your computer, on macOS type:

```bash
brew services list
```

Postgres will only work if you see a service with a `Name` of postgresql and it says say `started`

If you do not see `postgresql` listed, ask a consultant for assistance, if status does not say `started`, run the following command in your terminal


```bash
brew services restart postgres
```

Verify that Postgres is working with the command

```bash
psql
```

This should bring you into the PostgreSQL interactive terminal. It should look something like this

```bash
psql (<version_number>)
Type "help" for help.

<your_username>=#
```

Exit the psql terminal by typing `\q`, followed by `Enter`

[Continue With Installfest](atom.md)
