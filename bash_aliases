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
alias scratch='cd ~/scratch/'
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


if [[ $OSTYPE == linux* ]]; then 
    one_day_ago="$(date -d '-1 day' +'%Y-%m-%d')"
    two_days_ago="$(date -d '-2 day' +'%Y-%m-%d')"
    three_days_ago="$(date -d '-3 day' +'%Y-%m-%d')"
    four_days_ago="$(date -d '-4 day' +'%Y-%m-%d')"
    five_days_ago="$(date -d '-5 day' +'%Y-%m-%d')"
    browser_cmd="firefox"
elif [[ $OSTYPE == darwin* ]]; then 
    one_day_ago="$(date -v-1d +%F)"
    two_days_ago="$(date -v-2d +%F)"
    three_days_ago="$(date -v-3d +%F)"
    four_days_ago="$(date -v-4d +%F)"
    five_days_ago="$(date -v-5d +%F)"
    browser_cmd="open"
fi


alias ry="echo $one_day_ago | xargs python3 ~/dev/wiki/review.py"
alias ryy="echo $two_days_ago | xargs python3 ~/dev/wiki/review.py"
alias ryyy="echo $three_days_ago | xargs python3 ~/dev/wiki/review.py"
alias ryyyy="echo $four_days_ago | xargs python3 ~/dev/wiki/review.py"
alias ryyyyy="echo $five_days_ago | xargs python3 ~/dev/wiki/review.py"
alias gol="cd ~/dev/wiki/; \
           open http://localhost:4567; \
           gollum --css;"

# clipboard
alias copy='xsel -ib'

# news
alias n="$browser_cmd https://www.ft.com; \
         $browser_cmd https://www.nytimes.com; \
         $browser_cmd https://www.reddit.com/r/dataengineering/; \
         $browser_cmd https://news.ycombinator.com/; \
         $browser_cmd https://www.astronomer.io/blog/; \
         $browser_cmd https://medium.com/tag/data-engineering; \
         $browser_cmd https://medium.com/tag/airflow; \
         $browser_cmd https://medium.com/tag/python; "
