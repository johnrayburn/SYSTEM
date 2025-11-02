#!/bin/bash

pushd /opt
rm -rf /opt/nvim-linux-x86_64 || echo "delete old failed" && return 1
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz || echo "download failed" && return 1
tar -C /opt -xzf nvim-linux-x86_64.tar.gz || echo "extract failed" && return 1
ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim || echo "link failed" && return 1
popd

export EDITOR=nvim
