#!/bin/bash
mkdir -p ~/.local/lib ~/.local/bin
curl -fL https://github.com/cdr/code-server/releases/download/v3.4.1/code-server-3.4.1-linux-amd64.tar.gz \
  | tar -C ~/.local/lib -xz
mv ~/.local/lib/code-server-3.4.1-linux-amd64 ~/.local/lib/code-server-3.4.1
ln -s ~/.local/lib/code-server-3.4.1/bin/code-server ~/.local/bin/code-server
PATH="~/.local/bin:$PATH"
code-server
