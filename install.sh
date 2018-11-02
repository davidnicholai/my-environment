#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
ln -sf $DIR/vimrc ~/.vimrc
ln -sf $DIR/bash_profile ~/.bash_profile
ln -sf $DIR/tmux.conf ~/.tmux.conf
ln -sf $DIR/slate.js ~/.slate.js
