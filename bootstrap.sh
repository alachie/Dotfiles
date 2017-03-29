#!/bin/sh

link() {
	echo "🔗  $1"
	stow $1 -t ~
}

link "vim"
link "tmux"

#echo "linking vim"
#stow vim -t ~

#echo "linking tmux"
#stow tmux -t ~

