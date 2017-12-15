#!/bin/bash

display_usage() {
	echo "<install> or <remove> everything!"
}

if [ $# -lt 1 ]; then
	display_usage
	exit 1
fi

case $1 in

	install)

	# Change shell to zsh
	TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
	if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
		printf "Changing default shell to zsh\n"
		chsh -s $(grep /zsh$ /etc/shells | tail -1)
	fi

	# Link .zshrc
	if [ ! -h $HOME/.zshrc ]; then
		ln -s $HOME/shellsuperstar/.zshrc $HOME/.zshrc
	fi

	# Link oh-my-zsh
	if [ ! -h  $HOME/.oh-my-zsh ]; then
		ln -s $HOME/shellsuperstar/oh-my-zsh $HOME/.oh-my-zsh
	fi

	# Link .screenrc
	if [ ! -h $HOME/.screenrc ]; then
		ln -s $HOME/shellsuperstar/.screenrc $HOME/.screenrc
	fi

	# Link .vimrc
	if [ ! -h $HOME/.vimrc ]; then
		ln -s $HOME/shellsuperstar/.vimrc $HOME/.vimrc
	fi

	# Link .vim
	if [ ! -h $HOME/.vim ]; then
		ln -s $HOME/shellsuperstar/vim $HOME/.vim
	fi

	# Pull submodules
	git submodule init && git submodule update

    # Vundle PluginInstall
    vim +PluginInstall +qall

	# Link custom aliases
	if [ ! -h $HOME/.oh-my-zsh/custom/aliases.zsh ]; then
		ln -s $HOME/shellsuperstar/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
	fi

    # Create Vim's specific plugins file
    touch $HOME/shellsuperstar/specific_plugins.vim

	;;

	remove)

	if [ -h $HOME/.zshrc ]; then
		rm $HOME/.zshrc
	fi

	if [ -h  $HOME/.oh-my-zsh ]; then
		rm $HOME/.oh-my-zsh
	fi

	if [ -h $HOME/.screenrc ]; then
		rm $HOME/.screenrc
	fi

	if [ -h $HOME/.vimrc ]; then
		rm $HOME/.vimrc
	fi

	if [ -h $HOME/.vim ]; then
		rm $HOME/.vim
	fi

	;;

	*)

	display_usage
	
	;;
esac
