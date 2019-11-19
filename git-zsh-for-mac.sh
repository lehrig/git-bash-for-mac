#!/bin/bash

# see https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
source ~/.zsh/git-completion.bash

# see https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fpath=(~/.zsh $fpath)

# see https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/.zsh/git-prompt.sh
setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

# color support (to be replaced by https://github.com/Powerlevel9k/powerlevel9k)
#DEFAULT="\[\033[0;00m\]"
#GREEN="\[\033[0;32m\]"
#YELLOW="\[\033[0;33m\]"
#CYAN="\[\033[0;36m\]"
#setopt PROMPT_SUBST ; PS1=$GREEN"%n@%m"$YELLOW" %c"$CYAN'$(__git_ps1 " (%s)")'$DEFAULT"\n\$ "

# reload
autoload -Uz compinit && compinit

