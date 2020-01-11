# Git branch in prompt.
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


# Bash, tmux, vim
alias tmuxat='tmux attach -t 0'

alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias c='clear'

alias ev='vim ~/.vimrc'

# Navigation
alias ll="ls -al"
alias cdd='cd ..'
alias cddd='cd ../..'
alias dev='cd ~/dev/'

# Git
alias gb='git branch'
alias gcm='git checkout master'
alias gs='git status'
alias gd='git diff'

# Wiki
alias w="vim ~/dev/vimwiki/index.md"
alias r="python3 ~/dev/vimwiki/review.py"
