#!/bin/bash
#oh-my-zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git submodule init
git submodule update --recursive
ln -sFi $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -sFi $HOME/.dotfiles/.vim $HOME/.vim
ln -sFi $HOME/.dotfiles/.vim/.vimrc $HOME/.vimrc
ln -sFi $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sFi $HOME/.dotfiles/oh-my-zsh $HOME/.oh-my-zsh
