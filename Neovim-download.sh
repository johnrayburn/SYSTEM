#!/bin/bash

pushd /opt
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz
ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
popd

