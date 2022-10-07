# This script copies the latest version of dotfiles I want tracked.
# Ideally, no direct changes to this repo should be made - it should all go through this script.


# TODO
# rm rf oh-my-zsh/custom
# cp .../custom
# same with nvim
# same with .zshrc
# set up script (download dir colors, etc)

BASEDIR=$(dirname "$0")

# terminal stuff
rm -rf $BASEDIR/terminal/*

# if running from WSL...
if grep -iq Microsoft /proc/version; then
	echo "Detected this is WSL..."
	if which wslvar >/dev/null ; then
		echo "Pulling config from windows directories..."
		WINPATH=$(wslpath "$(wslvar USERPROFILE)")
		cp "$WINPATH/AppData/Roaming/alacritty/alacritty.yml" $BASEDIR/terminal
		cp "$WINPATH/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json" $BASEDIR/terminal
	else
		echo "You need to install wslu first."
		echo "See: https://github.com/wslutilities/wslu"
		return 1
	fi
fi

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

