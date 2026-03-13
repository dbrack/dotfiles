# Functions
if status is-interactive
    # Ensure Atuin is initialized first
    atuin init fish | source
end

# key bindings for history search
bind \e\[A up-or-search
bind \cr _atuin_search
bind \e\[1\;3A history-prefix-search-backward
bind \e\[1\;3B history-prefix-search-forward

# Environment Variables
set -gx PROJECTS_HOME $HOME/Projects
set -gx SSH_AUTH_SOCK $HOME/.ssh/proton-pass-agent.sock
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# Aliases
alias dev="cd $PROJECTS_HOME"
alias lla="ls -la"
alias delpyc="find . \\( -name \"*.pyc\" -o -name \"*.pyo\" \\) -type f -delete"
alias java_ls="/usr/libexec/java_home -V 2>&1 | grep -E \"\\d.\\d.\\d[,_]\" | cut -d , -f 1 | colrm 1 4 | grep -v Home"
alias t="tmux attach || tmux new"
alias st="git status"
alias bad="git bisect bad"
alias good="git bisect good"
alias push="git push origin HEAD"
alias add="git add -p"
alias gprune="git remote prune origin"
alias gbpurge="git branch --merged | grep -v \"\\*\" | grep -v \"master\" | grep -v \"develop\" | xargs -n 1 git branch -d"
alias gbpurgeunsafe="git branch | grep -v \"master\" | grep -v \"develop\" | xargs git branch -D"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

starship init fish | source
zoxide init fish | source
