#!/bin/sh

# Test if Neovim is installed
[ -x "$(command -v nvim)" ] || echo "neovim is not installed" && return 1

# remove old LazyVim
rm ~/.config/nvim
rm ~/.local/share/nvim
rm ~/.local/state/nvim
rm ~/.cache/nvim

git clone https://github.com/LazyVim/starter ~/.config/nvim
# remove PROJECT git folder to be able to add it to PERSONAL git repo 
rm -rf ~/.config/nvim/.git

nvim
