# bash
alias ealias='vim ~/.bash_aliases'
alias salias='source ~/.bash_aliases'

# tmux
alias tmuxat='tmux attach -t 0'

# navigation
alias ll="ls -al"
alias cdd='cd ..'
alias cddd='cd ../..'
alias dev='cd ~/dev/'
alias c='clear'

# vim
alias ev='vim ~/.vimrc'

# python
alias python='python3.8'

# git
alias gb='git branch'
alias gcm='git checkout master'
alias gs='git status'
alias gd='git diff'
alias ggg="git add .; \
           git commit -am.; \
           git push;"

# wiki
alias w="vim ~/dev/wiki/index.md"
alias r="python3 ~/dev/wiki/review.py"
alias ry="date -v-1d +%F | xargs python3 ~/dev/wiki/review.py"
alias ryy="date -v-2d +%F | xargs python3 ~/dev/wiki/review.py"
alias ryyy="date -v-3d +%F | xargs python3 ~/dev/wiki/review.py"
alias ryyyy="date -v-4d +%F | xargs python3 ~/dev/wiki/review.py"
alias ryyyyy="date -v-5d +%F | xargs python3 ~/dev/wiki/review.py"
alias gol="cd ~/dev/vimwiki; \
           open http://localhost:4567; \
           gollum --css;"

# clipboard
alias copy='xsel -ib'

# news
alias n="open https://www.ft.com; \
         open https://www.nytimes.com; \
         open https://www.reddit.com/r/dataengineering/; \
         open https://news.ycombinator.com/; \
         open https://www.astronomer.io/blog/; \
         open https://medium.com/tag/data-engineering; \
         open https://medium.com/tag/airflow; \
         open https://medium.com/tag/python; "
