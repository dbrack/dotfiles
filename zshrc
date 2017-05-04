# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(osx git git-extras github gitignore history-substring-search nvm yarn npm)

source $ZSH/oh-my-zsh.sh

#export CLICOLOR=1
#export LSCOLORS='ExFxCxDxbxegedabagacad'

export LC_ALL=en_US.UTF-8

## Custom PATH setup
export PATH=/usr/local/share/npm/bin:"${HOME}/.config/yarn/global/node_modules/.bin":/opt/X11/bin:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/platform-tools:$JAVA_HOME/bin:$HOME/.rvm/bin:$HOME/.bin:/usr/local/sbin:$(go env GOPATH)/bin:$PATH
export CLONES_HOME=$HOME/Clones

## Aliases
alias dev='cd $CLONES_HOME'
alias lla="ls -la"
alias zshconfig="atom ~/.zshrc"
alias wserver="ssh db@dbr.me -i ~/.ssh/milky"
alias delpyc='find . \( -name "*.pyc" -o -name "*.pyo" \) -type f -delete'
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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# added by travis gem
[ -f /Users/Dominik/.travis/travis.sh ] && source /Users/Dominik/.travis/travis.sh
