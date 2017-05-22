#!/bin/sh

if ! type "stow" > /dev/null; then
	echo "you dont have stow 😪 "	
	exit
fi

link() {
	echo "🔗  $1"
	stow $1 -t $2
}

# if[ ! -d "~/.config/fish" ]; then
# 	echo "creating 📁  ~/.config/fish"
# 	mkdir ~/.config/fish
# fi

link "fish" ~/.config/fish
link "vim" ~
link "tmux" ~

#sublime
echo "🔗  sublime"
ln -sv "./sublime/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"