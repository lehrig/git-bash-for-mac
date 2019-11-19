#!/bin/bash

source ~/.zsh/git-completion.bash
source ~/.zsh/git-prompt.sh

DEFAULT="\[\033[0;00m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
CYAN="\[\033[0;36m\]"

#setopt PROMPT_SUBST ; PS1=$GREEN"%n@%m"$YELLOW" %c"$CYAN'$(__git_ps1 " (%s)")'$DEFAULT"\n\$ "

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
