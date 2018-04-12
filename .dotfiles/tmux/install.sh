# Check for tmux plugin manager

if ! [ -d ~/.tmux/plugins/tpm ]; then 
  echo "  Installing tmux plugin manager for you."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

