#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Set up vim theme
FILE=~/.vim/colors/solarized.vim
if test -f "$FILE";
then 
	echo Vim solarized theme is already set up. Skipping.
else
	mkdir ~/temp-install
	git clone git://github.com/altercation/vim-colors-solarized.git ~/temp-install/vim-colors-solarized
	mkdir ~/.vim/colors
	mv ~/temp-install/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
	rm -rf ~/temp-install
fi

FILE=~/.vim/autoload/plug.vim
if test -f "$FILE";
then
	echo Vim\'s Plug is already set up. Skipping.
else
	curl -fLo  ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Set up zsh and oh-my-zsh
if ! type "zsh" > /dev/null 2>&1 ; then
	echo oh-my-zsh is not installed. Let me do that for you.
	sudo apt-get install zsh -y
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

	ln -sf $DIR/zshrc ~/.zshrc
	sudo chsh $(whoami) -s $(which zsh)
else
	echo Great! Zsh is already installed.
fi

# Git uses Nano as its default editor
git config --global core.editor "vim"
git config --global user.name "David Lim"
git config --global user.email "nicholai.david@gmail.com"
echo Assigned vim as git\'s default editor.

ln -sf $DIR/vimrc ~/.vimrc
echo Created a symlink for .vimrc

ln -sf $DIR/inputrc ~/.inputrc
echo Created a symlink for .inputrc

ln -sf $DIR/tmux.conf ~/.tmux.conf
echo Created a symlink for .tmux.conf

source ~/.inputrc
echo Sourced .inputrc

source ~/.bashrc
echo Sourced .bashrc

# gsettings set org.gnome.desktop.peripherals.keyboard delay 237

echo Done! Run zsh or do a sudo reboot.
