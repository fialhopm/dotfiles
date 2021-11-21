# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/Users/pedro/go/bin
export GOPATH=/Users/pedro/go

# Git
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt PROMPT_SUBST
PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '

# Other
export EDITOR=vim

