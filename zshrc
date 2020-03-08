#!/usr/bin/env zsh

export PATH="$HOME/Work/go/bin:~/.dotfiles/bin:/usr/local/bin:$PATH"

# .zsh_history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

autoload -U compinit
compinit
autoload -U promptinit
promptinit

[ -f ~/.dotfiles/config/spaceship/exports.sh ] && source ~/.dotfiles/config/spaceship/exports.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source <(antibody init)
antibody bundle <~/.dotfiles/zsh_plugins.txt

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
