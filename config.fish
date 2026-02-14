# Functions
if status is-interactive
# Commands to run in interactive sessions can go here
end

# Aliases
alias dev="cd $PROJECTS_HOME"
alias lla="ls -la"
alias delpyc="find . \\( -name \"*.pyc\" -o -name \"*.pyo\" \\) -type f -delete"
alias java_ls="/usr/libexec/java_home -V 2>&1 | grep -E \"\\d.\\d.\\d[,_]\" | cut -d , -f 1 | colrm 1 4 | grep -v Home"
alias t=tmux
alias st="git status"
alias bad="git bisect bad"
alias good="git bisect good"
alias push="git push origin HEAD"
alias add="git add -p"
alias gprune="git remote prune origin"
alias gbpurge="git branch --merged | grep -v \"\\*\" | grep -v \"master\" | grep -v \"develop\" | xargs -n 1 git branch -d"
alias gbpurgeunsafe="git branch | grep -v \"master\" | grep -v \"develop\" | xargs git branch -D"

# Environment Variables
set -gx PROJECTS_HOME $HOME/Projects
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

starship init fish | source
