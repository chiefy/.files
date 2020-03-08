#!/usr/bin/env zsh

# https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

export SPACESHIP_PROMPT_ORDER=(
    dir       # Current directory section
    host      # Hostname section
    git       # Git section (git_branch + git_status)
    kubectl   # Kubectl context section
    golang    # Go section
    php       # PHP section
    docker    # Docker section
    aws       # Amazon Web Services section
    venv      # virtualenv section
    pyenv     # Pyenv section
    terraform # Terraform workspace section
    exec_time # Execution time
    line_sep  # Line break
    jobs      # Background jobs indicator
    exit_code # Exit code section
    char      # Prompt character
) \
SPACESHIP_CHAR_SYMBOL=🚽 \
SPACESHIP_DIR_COLOR=5 \
SPACESHIP_CHAR_SUFFIX=" " \
SPACESHIP_CHAR_SYMBOL_ROOT=ⓡ \
SPACESHIP_KUBECTL_SHOW=true \
SPACESHIP_KUBECTL_SYMBOL=⎈ \
SPACESHIP_KUBECTL_COLOR=247 \
SPACESHIP_KUBECTL_PREFIX= \
SPACESHIP_KUBECTL_SUFFIX= \
SPACESHIP_KUBECONTEXT_PREFIX=" " \
SPACESHIP_KUBECONTEXT_COLOR=254
#
#ϟ༄
#
