# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="evan"

# Plugins
plugins=(git vi-mode history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

export EDITOR="vim"

# Replace the default vi-mode search with incremental search backward    
bindkey -M vicmd '/' history-incremental-search-backward
# remap k & j for the history substring search module
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Bind fj to incremental search backward
bindkey fj history-incremental-search-backward

# Edit the current line with the editor
bindkey -M vicmd v edit-command-line

# Bind jk to vi command mode
bindkey jk vi-cmd-mode

# Z
. ~/shellsuperstar/z/z.sh
