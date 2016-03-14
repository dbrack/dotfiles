# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="manu"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras osx brew gitignore history-substring-search)

source $ZSH/oh-my-zsh.sh

#export CLICOLOR=1
#export LSCOLORS='ExFxCxDxbxegedabagacad'

## Custom PATH setup
export PATH=/Library/Frameworks/Python.framework/Versions/3.3/bin:/usr/local/share/npm/bin:/opt/X11/bin:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/platform-tools:$JAVA_HOME/bin:$HOME/.rvm/bin:$HOME/.bin:/usr/local/sbin:$PATH
export PROJECT_HOME=$HOME/Files/Projects
# fuck terminal command (Ensure thefuck homebrew cask is installed)
eval "$(thefuck --alias)"

## Aliases
alias dev-projects='cd $PROJECT_HOME'
alias lla="ls -la"
alias zshconfig="atom ~/.zshrc"
alias wserver="ssh -p 1337 db@dbr.me -i ~/.ssh/id_milky"
alias delpyc='find . \( -name "*.pyc" -o -name "*.pyo" \) -exec rm -v {} \;'
alias lockscreen='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'
alias java_ls='/usr/libexec/java_home -V 2>&1 | grep -E "\d.\d.\d[,_]" | cut -d , -f 1 | colrm 1 4 | grep -v Home'

# git
alias st='git status'
alias bad='git bisect bad'
alias good='git bisect good'
alias push='git push origin HEAD'
alias add='git add -p'
alias gprune='git remote prune origin'
alias gbpurge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | xargs -n 1 git branch -d'
alias gbpurgeunsafe='git branch | grep -v "master" | grep -v "develop" | xargs git branch -D'


# Environment specific additions:
if [ -f ~/.zshrc_local ]; then
	source ~/.zshrc_local
fi
