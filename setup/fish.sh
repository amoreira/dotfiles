#!/usr/bin/env bash

echo ">>>"
echo ">>> Setup fish"
echo ">>>"

echo "
### amoreira/dotfiles

set -x NODE_ENV development
set PATH (yarn global bin) \$PATH

alias gs='git status'
alias gp='git pull'
alias ga='git add --all'
alias gap='git add -p'
alias gm='git merge --no-ff'
alias gc='git changelog'
alias gg='git graph'
alias gcm='git checkout master'
alias gsm='git submodule update --init --recursive'
alias gup='git pull --rebase --prune $argv; and gsm'
alias hash='git rev-parse --short HEAD | pbcopy'
alias tm='tmux'
alias eh='sudo vim /etc/hosts'
alias ..='cd ..'
test $TERM != "screen"; and exec tmux

### amoreira/dotfiles
" >> ~/.config/fish/config.fish

echo ">>>"
echo ">>> Installing fisherman"
echo ">>>"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo ">>>"
echo ">>> Installing vtex-fish"
echo ">>>"
fisher vtex/vtex-fish

sudo bash -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

echo ">>>"
echo ">>> Configured fish as default terminal."
echo ">>>"
