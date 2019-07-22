#!/bin/bash

currDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -fsn ${currDIR}/.condarc $HOME/.condarc
ln -fsn ${currDIR}/.vimrc $HOME/.vimrc
ln -fsn ${currDIR}/.myclirc $HOME/.myclirc
ln -fsn ${currDIR}/.zshrc $HOME/.zshrc
