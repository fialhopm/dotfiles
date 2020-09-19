# Credit: https://www.stefaanlippens.net/my_bashrc_aliases_profile_and_other_stuff/

# Load .profile, containing login, non-bash related initializations.
source ~/.profile

# Load .bashrc, containing non-login related bash initializations.
source ~/.bashrc


# Git branch in prompt.
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


# Go
export PATH=$PATH:/usr/local/go/bin
