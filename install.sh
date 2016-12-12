#!/bin/bash

set -euf -o pipefail

dotfiles="$(pwd)"

cd

files=(
	.config/git
	.gdbinit
	.gitconfig
	.hgrc
	.mutt
	.tmux.conf
	.vim
	.vimrc
)

declare mode="${1:-install}"

for i in "${files[@]}"; do
	case "${mode}" in
	install)
		if [[ ! -e $i ]]; then
			echo "installing $i"
			if [[ ! -d "$(dirname $i)" ]]; then
				mkdir -p "$(dirname $i)"
			fi
			ln -s "${dotfiles}"/"$i" ~/"$i"
		fi
		;;

	remove)
		if [[ -L $i ]]; then
			echo "removing $i"
			rm $i
		fi
		;;

	*)
		echo "unknown mode: ${mode}" && exit 1
		;;
	esac
done
