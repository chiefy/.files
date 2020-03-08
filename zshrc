#!/usr/bin/env zsh

export PATH="$HOME/Work/go/bin:/usr/local/bin:$PATH"

autoload -U compinit
compinit
autoload -U promptinit
promptinit

source ~/.dotfiles/config/spaceship/exports.sh

source <(antibody init)
antibody bundle <~/.dotfiles/zsh_plugins.txt

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
