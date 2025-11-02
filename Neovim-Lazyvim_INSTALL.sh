#!/bin/bash

pushd /opt
rm -rf /opt/nvim-linux-x86_64
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -C /opt -xzf nvim-linux-x86_64.tar.gz
ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
popd

[ -x "$(command -v nvim)" ] && echo "neovim installed" && exit 0

# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/LazyVim/starter ~/.config/nvim
# remove PROJECT git folder to be able to add it to PERSONAL git repo 
rm -rf ~/.config/nvim/.git

nvim
