#!/bin/bash
echo ">>>"
echo ">>> Configuring git."
echo ">>>"

git config --global user.name "amoreira"
git config --global user.email "anderson.moreira@vtex.com.br"
git config --global alias.changelog 'log --oneline --abbrev-commit --no-merges'
git config --global alias.graph "log --all --decorate --oneline --graph"

git config --global diff.tool "meld"
git config --global difftool.prompt false
git config --global difftool.meld.trustExitCode = true
git config --global difftool.meld.cmd  "open -W -a Meld --args \"$LOCAL\" \"$PWD/$REMOTE\""

git config --global merge.tool "meld"
git config --global mergetool.keepBackup
git config --global difftool.mergetool.meld.trustExitCode = true
git config --global difftool.mergetool.meld.cmd "open -W -a Meld --args --auto-merge \"$PWD/$LOCAL\" \"$PWD/$BASE\" \"$PWD/$REMOTE\" --output=\"$PWD/$MERGED\""

git config --global color.ui true
git config --global core.editor "vim"
git config --global push.default simple
git config --global pull.rebase true

echo ">>>"
echo ">>> Applied git configurations."
echo ">>>"


