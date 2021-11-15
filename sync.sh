# This script copies the latest version of dotfiles I want tracked.
# Ideally, no direct changes to this repo should be made - it should all go through this script.


# TODO
# rm rf oh-my-zsh/custom
# cp .../custom
# same with nvim
# same with .zshrc
# set up script (download dir colors, etc)

BASEDIR=$(dirname "$0")

# zsh stuff
rm -rf $BASEDIR/zsh/oh-my-zsh/custom/*
cp -a ~/.oh-my-zsh/custom/. $BASEDIR/zsh/oh-my-zsh/custom/
cp ~/.zshrc $BASEDIR/zsh/.zshrc

# tmux stuff
rm -rf $BASEDIR/tmux/.[!.]* $BASEDIR/tmux/..?* $BASEDIR/tmux/*
cp ~/.tmux.conf $BASEDIR/tmux/.tmux.conf

# neovim
rm -rf $BASEDIR/nvim/*
cp -a ~/.config/nvim/. $BASEDIR/nvim/

