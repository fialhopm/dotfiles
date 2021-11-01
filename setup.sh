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
mkdir -p ~/dev/
cd ~/dev/

if [ ! -d "$dotfiles" ]; then
    git clone git@github.com:fialhopm/dotfiles.git
else
    echo "already clone dotfiles"
fi

ln -s -f ~/dev/dotfiles/zshrc ~/.zshrc
ln -s -f ~/dev/dotfiles/zprofile ~/.zprofile
ln -s -f ~/dev/dotfiles/tmux.conf ~/.tmux.conf
ln -s -f ~/dev/dotfiles/vimrc ~/.vimrc
