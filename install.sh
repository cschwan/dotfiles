#!/bin/bash

dotfiles="$(pwd)"

cd

files=(
	.tmux.conf
	.vim
	.vimrc
)

for i in "${files[@]}"; do
	if [[ ! -f $i ]]; then
		echo "installing $i"
		ln -s "${dotfiles}"/"$i" ~/"$i"
	fi
done
