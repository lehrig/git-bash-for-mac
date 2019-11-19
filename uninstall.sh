#!/bin/bash

rm ~/.zsh/git-zsh-for-mac.sh
rm ~/.zsh/git-completion.bash
rm ~/.zsh/git-completion.zsh
rm ~/.zsh/git-prompt.sh

sed -i.backup '/source ~\/.zsh\/git-zsh-for-mac.sh/d' ~/.zshrc 
