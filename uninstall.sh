#!/bin/bash

rm ~/.git-zsh-for-mac.sh
rm ~/.git-completion.zsh
rm ~/.git-prompt.sh

sed -i.backup '/source ~\/.git-zsh-for-mac.sh/d' ~/.zshrc 
