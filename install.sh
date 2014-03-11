#!/bin/bash
cd
git clone git@github.com:rapind/dotfiles.git .dotfiles
ln -s $HOME/.dotfiles/zsh.after $HOME/.zsh.after
ln -s $HOME/.dotfiles/vimrc.after $HOME/.vimrc.after
ln -s $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf

# Install YADR
sh -c "`curl -fsSL https://raw.github.com/skwp/dotfiles/master/install.sh`"
yav -u https://github.com/wavded/vim-stylus

