#!/usr/bin/env bash

paru -Sy --noconfirm neovim lazygit clang \
  fzf ripgrep fd hererocks luarocks \
  nodejs npm pnpm

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"

rustup toolchain install

# git config --global user.email "gregory.m.laurent@gmail.com"
# git config --global user.name "Greg L"

# required
# mv ~/.config/nvim{,.bak}
#
# # optional but recommended
# mv ~/.local/share/nvim{,.bak}
# mv ~/.local/state/nvim{,.bak}
# mv ~/.cache/nvim{,.bak}
#
#
# git clone https://github.com/LazyVim/starter ~/.config/nvim
#
# rm -rf ~/.config/nvim/.git
