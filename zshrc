#!/usr/local/bin/zsh

export PATH="$HOME/Work/go/bin:~/.dotfiles/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export STARSHIP_CONFIG=~/.dotfiles/config/starship/starship.toml

source ~/.zsh-snap/zsh-snap/znap.zsh

. $HOME/.asdf/asdf.sh

# History
HISTFILE=~/.zsh_history
SAVEHIST=$(( 50 * 1000 ))       # For readability
HISTSIZE=$(( 1.2 * SAVEHIST ))  # Zsh recommended value
setopt appendhistory

fpath+=(
    ~[asdf-vm/asdf]/completions
    ~[asdf-community/asdf-direnv]/completions
    ~[zsh-users/zsh-completions]/src
)

znap compdef _kubectl 'kubectl completion  zsh'

znap source marlonrichert/zcolors
znap eval zcolors "zcolors ${(q)LS_COLORS}"

znap source marlonrichert/zsh-autocomplete
znap source bobsoppe/zsh-ssh-agent

znap eval starship 'starship init --print-full-init zsh'
znap prompt

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting
