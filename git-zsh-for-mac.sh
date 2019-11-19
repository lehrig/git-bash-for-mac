#!/bin/bash

# see https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
# see https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
# see see https://stackoverflow.com/questions/28028740/git-tab-completion-in-zsh-throwing-errors
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# see https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/.zsh/git-prompt.sh

# color support for prompt
# see https://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text
autoload -U colors && colors
DEFAULT="%{$fg[black]%}"
GREEN="%{$fg[green]%}"
YELLOW="%{$fg[yellow]%}"
CYAN="%{$fg[cyan]%}"

# prompt format
# see https://wiki.gentoo.org/wiki/Zsh/Guide
USERNAME='%n'
MACHINE='%m'
WORKDIR='%d'
NEWLINE=$'\n'
GITBRANCH=$(__git_ps1 " (%s)")

setopt PROMPT_SUBST ; PS1='${GREEN}${USERNAME}@${MACHINE}${YELLOW} ${WORKDIR}${CYAN}${GITBRANCH}${DEFAULT}${NEWLINE}\$ '

# reload
autoload -Uz compinit && compinit
