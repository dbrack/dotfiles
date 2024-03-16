#!/bin/bash

# Install dotfiles
# Shamelessly copied from github.com/pstadler/
for symlink in gitconfig gitignore_global zshrc zshrc_local vimrc tmux.conf fzfcommands alacritty.toml
do
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done

# # Install ZSH Theme
# ln -s $PWD/ZSH\ Themes/dbr.zsh-theme ~/.oh-my-zsh/themes/dbr.zsh-theme

# # Link vim
# ln -s $PWD/vim ~/.vim

# # install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # install volta
# curl https://get.volta.sh | bash

# # install rustup
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh