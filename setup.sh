# brew
open https://brew.sh/
echo "run brew installation command"

# tmux
brew install tmux

# github
ssh-keygen -t ed25519 -C "fialhopm@gmail.com"
pbcopy < ~/.ssh/id_ed25519.pub
echo "set up Github SSH key"
open https://github.com/settings/ssh/new

# dotfiles
git clone git@github.com:fialhopm/dotfiles.git ~/.dotfiles
ln -s -f ~/.dotfiles/zshrc ~/.zshrc
ln -s -f ~/.dotfiles/zprofile ~/.zprofile
ln -s -f ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s -f ~/.dotfiles/vimrc ~/.vimrc

# go
open https://golang.org/doc/install
mkdir -p $HOME/go/{bin,src}
mkdir -p $HOME/go/src/github.com
