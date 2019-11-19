#!/bin/bash
set -e

mkdir -p ~/.zsh

curl -o ~/.zsh/git-zsh-for-mac.sh https://raw.githubusercontent.com/lehrig/git-zsh-for-mac/master/.git-zsh-for-mac.sh
curl -o ~/.zsh/git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
curl -o ~/.zsh/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# Add newline at the end of '.zshrc' if it doesn't exist
#sed -i '' '$a\' ~/.zshrc

echo "source ~/.zsh/git-zsh-for-mac.sh" >> ~/.zshrc
