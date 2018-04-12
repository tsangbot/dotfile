#!/usr/bin/env bash

if [ ! -d ~/.SpaceVim ]; then
	curl -sLf https://spacevim.org/install.sh | bash
fi

pip install neovim
yarn global add neovim
