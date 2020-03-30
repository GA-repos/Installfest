# on linux, ~/.bashrc should contain the below line(s)

# from installfest/scripts/git.sh
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}
export PS1="\w \$(parse_git_branch)\n\$ "
export EDITOR='atom --wait'
export VISUAL='atom --wait'

# from installfest/scripts/homebrew.sh
export PATH="$HOME/.linuxbrew/bin:$PATH"

# from installfest/scripts/nvm.sh
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# from installfest/scripts/python.sh
if which rbenv > /dev/null; then
   eval "$(rbenv init -)"
fi
