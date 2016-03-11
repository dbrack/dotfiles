#!/bin/bash

# Install dotfiles
# Shamelessly copied from github.com/pstadler/
for symlink in gitconfig gitignore_global zshrc zshrc_local
do
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done

# Install ZSH Theme
ln -s $PWD/ZSH\ Themes/manu.zsh-theme ~/.oh-my-zsh/themes/manu.zsh-theme

# Link Sublime
# ln -s "$PWD/Sublime Text 2/Preferences.sublime-settings" "~/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"

# link google drive folders
ln -s ~/Google\ Drive/Files/Education ~/Files
ln -s ~/Google\ Drive/Files/Miscellaneous ~/Files
ln -s /Volumes/Boxcryptor/Google\ Drive/Files/Private ~/Files
ln -s ~/Google\ Drive/Pictures/Wallpaper ~/Pictures/Wallpaper
ln -s /Volumes/Boxcryptor/Google\ Drive/Pictures/Celebrities/ ~/Pictures/Celebrities
