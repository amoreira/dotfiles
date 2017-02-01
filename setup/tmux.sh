o ">>>"
echo ">>> Copy tmux.conf"
echo ">>>"
cp ./macos/.tmux.conf $HOME/.tmux.conf

echo ">>> Installing tmux plugin manager"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm