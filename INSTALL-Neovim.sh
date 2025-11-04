#!/bin/bash

pushd /opt
rm -rf /opt/nvim-linux-x86_64 && wait || (echo "delete old failed" && exit 1)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz && wait && echo "DOWNLOADED" || (echo "download failed" && exit 1)
tar -C /opt -xzf nvim-linux-x86_64.tar.gz && wait && echo "Extracted" || ( echo "extract failed" && exit 1 )
ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim && wait && echo "Linked" || ( echo "link failed" && exit 1)
popd

export EDITOR=nvim
