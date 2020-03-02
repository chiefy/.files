source <(antibody init)
autoload -U compinit; compinit
autoload -U promptinit; promptinit
antibody bundle < ~/.dotfiles/zsh_plugins.txt
