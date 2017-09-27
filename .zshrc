# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="flazz"

# Plugins
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

export EDITOR="vim"

# Replace the default vi-mode search with incremental search backward    
bindkey -M vicmd '/' history-incremental-search-backward

# Edit the current line with the editor
bindkey -M vicmd v edit-command-line

# Z
. ~/shellsuperstar/z/z.sh

