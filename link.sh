#!/bin/bash

# Install dotfiles
# Shamelessly copied from github.com/pstadler/
for symlink in gitconfig gitignore_global zshrc zshrc_local vimrc tmux.conf alacritty.toml
do
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done

# # Link vim
rm -r ~/.vim
ln -s $PWD/vim ~/.vim

# Link starship config
rm ~/.config/starship.toml
ln -s $PWD/starship.toml ~/.config/

# Links ssh config
rm ~/.ssh/config
ln -s $PWD/sshconfig ~/.ssh/config