# Development setup from scratch

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install vim
brew install tmux
brew install python

# Configuration files
mkdir ~/dev/
cd ~/dev/
git clone git@github.com:fialhopm/dotfiles.git

