#!/bin/bash

# Install dotfiles
# Shamelessly copied from github.com/pstadler/
for symlink in gitconfig gitignore_global zshrc zshrc_local vimrc
do
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done

# Install ZSH Theme
ln -s $PWD/ZSH\ Themes/dbr.zsh-theme ~/.oh-my-zsh/themes/dbr.zsh-theme

# Link vim
ln -s $PWD/vim ~/.vim

# link hyper
ln -s $PWD/hyper.js ~/.hyper.js

# link google drive folders
ln -s ~/Google\ Drive/Documents/Education ~/Documents
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Documents/Miscellaneous/ ~/Documents
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Pictures/Wallpaper ~/Pictures
ln -s /Volumes/Secomba/dominik/Boxcryptor/iCloud/Private/ ~/Documents
ln -s /Volumes/Secomba/dominik/Boxcryptor/iCloud/Celebrities/ ~/Pictures

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
