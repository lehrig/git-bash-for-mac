#!/bin/bash

rm ~/.zsh/_git
rm ~/.zsh/git-zsh-for-mac.sh
rm ~/.zsh/git-completion.bash
rm ~/.zsh/git-prompt.sh

sed -i.backup '/source ~\/.zsh\/git-zsh-for-mac.sh/d' ~/.zshrc 
