#!/usr/bin/env bash

mkdir -p ../repos

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ../repos/nerd-fonts

../repos/nerd-fonts/install.sh

fc-cache -f
