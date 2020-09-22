# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Homebrew](homebrew.md)
- [x] [Node](node.md)
- [x] [Python](python.md)
- [x] [PostgreSQL](postgres.md)
- [x] [MongoDB](mongodb.md)
- [x] [Chrome](chrome.md)
- [ ] **VS Code**

## VS Code

If you do not already have Visual Studio Code, [download here](https://code.visualstudio.com/download).

**Important**: When done installing, if you are on a Mac, be sure to click and drag VS Code into your Applications folder. If you skip this step, any custom configurations will be lost each time you reopen VS Code.

![Click application and drag to Applications folder](https://i.imgur.com/Cd0B9hW.png)

### Launching VS Code from Terminal

- Open VS Code by clicking on the icon in your dock, OR by opening your search `cmd` + `space` and typing `vscode`.
- To be able to launch VS Code from your terminal: open the Command Palette (⇧⌘P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH.

![install shell commands](https://i.imgur.com/il5eKGh.png)

- You might need to quit terminal _and_ VS Code (`cmd` + `q`) in order for this to take effect.
- Make sure you are `quitting` terminal and VS Code, not just closing the program to install shell commands.


#### ALTERNATIVE: Use the Command Line

1. Open the terminal.
1. Copy and paste the following lines into the terminal: 

```bash
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```

#### How do I know it worked?

1. Open terminal.
2. Type the command `code --help` into terminal. If you see some help options, you successfully installed the `code` command.

### Configure VS Code as your default Git commit/diff tool

From the command line, run the following command from any directory: `git config --global core.editor "code --wait"`

> This is especially important if you have previously used other code editors on your system.

### Install VS Code Extensions

VS Code has numerous extensions that make developers' lives easier! We will be installing a few essential ones right now:

In your terminal, run:

```
code --install-extension ./ga-seir-bundle/ga-seir-bundle-0.0.1.vsix
```

If your installations were a success, you will see a message in terminal that looks like this:

![successful extenion bundle install](https://i.imgur.com/0DP1j0W.png)

> Quit your instance of VS Code and reopen for the newly-installed extensions to take effect!

### Configure VS Code Settings

Code formatting done well makes your code easy to read and understand, and also looks professional -- all things we want! Developing good habits early on to format as you write is important, but luckily VS Code has some great built-in tools to make formatting with your new extensions easier and more automatic.

1.  **Open settings.json**: In the navigation menu, go to `View` -> `Command Palette`, or press `command` + `shift` + `p` to open your Command Palette. Type `Open Settings`, then select `Preferences: Open Settings (JSON)`. (Do not select the Default, Keyoboard, UI or Workspace options.)

![opening settings file](https://i.imgur.com/QNh6WkI.png)

2. Once you have opened your `settings.json` file, copy and paste the following code into the top of your settings. Make sure you are pasting this code between the brackets.

```json
{
	"editor.formatOnSave": true,
	"editor.formatOnPaste": true,
	"editor.tabCompletion": "on",
	"editor.wordWrap": "on",
	"files.trimFinalNewlines": true,
	"files.autoSave": "afterDelay",
	"prettier.singleQuote": true,
	"prettier.semi": true,
	"prettier.jsxBracketSameLine": true,
	"prettier.useTabs": true,
	"prettier.tabWidth": 2,
	"prettier.jsxSingleQuote": true,
	"diffEditor.ignoreTrimWhitespace": true,
	"editor.codeActionsOnSave": {
		"source.fixAll.eslint": true
	},
	"eslint.alwaysShowStatus": true,
	"javascript.updateImportsOnFileMove.enabled": "always",
	"[javascript]": {
		"editor.defaultFormatter": "esbenp.prettier-vscode"
	},
	"python.linting.pylintEnabled": true,
	"python.linting.enabled": true,
	"python.formatting.provider": "autopep8"
}
```

> Note: if you find any of these settings don't work for you, feel free to modify them as you wish!

3. Now your `settings.json` should look like this:

![settings.json file](https://i.imgur.com/3x5uNur.png)

You will need to close VS Code completely and reopen it for changes to take effect. Now your text editor will AUTOMATICALLY format on save and paste!
