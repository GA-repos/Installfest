# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Homebrew (macOS only)](homebrew.md)
- [x] [Node](node.md)
- [x] [Ruby](ruby.md)
- [x] [PostgreSQL](postgres.md)
- [x] [MongoDB](mongodb.md)
- [ ] **Atom**
- [ ] [Chrome](chrome.md)

## Atom

The text editor we'll be using in this course is called **Atom**; it was
developed by the GitHub team, and is highly extensible.

### Installation

Run the following command to install Atom and several Atom packages:

```bash
scripts/atom.sh
```

- **During this script, Atom will open for you. Follow the prompt in your terminal and close it when asked to.**
- **on Windows 10** run the above command twice.

### Open Atom From Terminal

We prefer to open Atom directly from the terminal from now on. Once finished, open up Atom from the terminal using the command:

```bash
atom .
```

If you get a `command not found` response in your terminal, you have not
installed shell commands correctly. In this case, open Atom by clicking the icon in Applications (MacOS), Stat Menu (Windows), etc. In the top menu, select `Atom -> Install Shell Commands`. Then, rerun the above command.

### Enable Autosave

Part of being a good developer is using tools that help you make fewer mistakes.
To that end, let's configure a useful feature in Atom: autosave! The script you just ran should have enabled this for you, but we will check in Atom just to be sure.

**Note: Atom may prompt you to install additional packages when you open for the first time.** You should install these, as some packages we installed may depend on the ones Atom is prompting you to install.

Once Atom is open, in the top menu, go to `Packages -> Settings View -> Manage Packages`, and search for autosave.
Then open the "Settings" panel for the autosave plugin.

![Atom Settings > Packages](https://cloud.githubusercontent.com/assets/388761/21697829/41986714-d362-11e6-87ac-f0c42eac72e0.png)

Ensure the "Enabled" option is checked.

### Adjust Linting Settings

![Autosave Settings](https://cloud.githubusercontent.com/assets/388761/21697838/47338b72-d362-11e6-9106-4a5f476945ca.png)

Lastly, in the top menu, go to `Packages -> Settings View -> Manage Packages`, and search for `linter-stylelint`.
Then open the "Settings" panel for the linter-stylelint plugin.

Ensure the `Use Standard` box is _checked._

![Packages > Styelint > Settings](https://git.generalassemb.ly/storage/user/5688/files/acbce054-d42b-11e7-8097-14eb1f42141b)

## Editing Files in Windows 10
**It is VERY important that you only edit files in the Windows filesystem with Atom. Save all of your projects that you want to edit with Atom somewhere in `~/winhome`, **NEVER** in the WSL Ubuntu filesystem in `/`.**

### Gotcha 1: Never Edit Ubuntu Files in Windows Apps

The reason for this is that WSL Ubuntu can edit Windows files just fine, but editing WSL Ubuntu files with Windows programs (such as Atom which we just installed), corrupts them. Your instructors will provide more context for this!

### Gotcha 2: Invisible Line Endings

Windows has invisible line endings of type `CRLF` where Mac and Linux hav `LF` type line endings. If you copy text from a Windows program into Atom or bash, the `CRLF` endings may come along (even though they are invisible) and cause problems. Atom is set up to use `LF` line endings by default. 

However, if any file you are working with is giving you errors when it is run that include things like "Illegal Character", you can run this command to convert a file from `CRLF` to `LF` line endings:

```bash
d2u <file to convert>
```

[Continue With Installfest](chrome.md)

