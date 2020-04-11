# Set up repos and configuration files
mkdir ~/dev/
cd ~/dev/

git clone git@github.com:fialhopm/dotfiles.git

ln -s -f ~/dev/dotfiles/bashrc ~/.bashrc
ln -s ~/dev/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dev/dotfiles/bash_aliases ~/.bash_aliases
ln -s ~/dev/dotfiles/profile ~/.profile
ln -s -f ~/dev/dotfiles/tmux.conf ~/.tmux.conf
ln -s -f ~/dev/dotfiles/vimrc ~/.vimrc
