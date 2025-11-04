#!/bin/bash

# Test if Neovim is installed
[ -x "$(command -v nvim)" ] || (echo "neovim is not installed" && exit 1)

# remove old LazyVim
# rm -rf ~/.config/nvim
# rm -rf ~/.local/share/nvim
# rm -rf ~/.local/state/nvim
# rm -rf ~/.cache/nvim

# git clone https://github.com/LazyVim/starter ~/.config/nvim
# remove PROJECT git folder to be able to add it to PERSONAL git repo
# rm -rf ~/.config/nvim/.git

# exit 0
ln -sf ~/SYSTEM/.personal/nvim/lua/config/keymaps.lua ~/.config/nvim/lua/config/keymaps.lua
ln -sf ~/SYSTEM/.personal/nvim/lua/config/options.lua ~/.config/nvim/lua/config/options.lua
ln -sf ~/SYSTEM/.personal/nvim/lua/plugins/colorschemes.lua ~/.config/nvim/lua/plugins/colorschemes.lua
# ln -sf ~/SYSTEM/.personal/nvim/lua/plugins/disabled.lua ~/.config/nvim/lua/plugins/disabled.lua

# mkdir -p ~/.config/git
# ln -sf ~/SYSTEM/.personal/git/config ~/.config/git/config

# nvim
