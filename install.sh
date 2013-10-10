#!/bin/bash
cd
git clone git@github.com:rapind/dotfiles.git .dotfiles
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mkdir -p $HOME/.vim/colors
ln -s $HOME/.dotfiles/custom.zsh $HOME/.oh-my-zsh/custom/custom.zsh
ln -s $HOME/.dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/Tomorrow-Night.vim $HOME/.vim/colors/Tomorrow-Night.vim

