## Common Problems

Here is a list of common issues encountered during installfest

**Problem** Pop ups in Atom in JavaScript file complaining about ESlint

**Solution** ESlint should be disabled if no config file is found in repo. This is the default, but sometimes doesn't get set
![ESlint Atom Settings](https://git.generalassemb.ly/storage/user/5689/files/de279074-421a-11e7-9048-a21212958785)


**Problem** Using default version of Ruby or Node (not the ones installed through homebrew with rbenv and nvm)

`/bin` should not be in the location of the software we use

-   `which ruby` should output something like `/Users/<username>/.rbenv/shims/ruby`

-   `which node` should output something like `/Users/<username>/.nvm/versions/node/v<node_version>/bin/node`

In the result of `echo $PATH`
the location of rbenv and nvm should come before `/usr/local/bin`

**Solution** Ensure that nvm and rbenv were installed correctly

-   Issues with ruby
   - The `ruby.sh` script adds the following snippet to ~/.bashrc that sets up the path for rbenv. Make sure it was successfully added.
   ```
   if which rbenv > /dev/null; then
        eval "$(rbenv init -)"
   fi
   ```
-   Issues with node
    - The `nvm.sh` script adds the following snippet to ~/.bashrc that sets up the path for node. Make sure it was successfully added.
    ```
    . $(brew --prefix nvm)/nvm.sh
    ```
