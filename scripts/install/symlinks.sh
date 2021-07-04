#!/bin/bash
mkdir -p ~/.config/nvim

ln -sf "$PWD/nvimrc"      ~/.config/nvim/init.vim
ln -sf "$PWD/zshrc"       ~/.zshrc
ln -sf "$PWD/aliases.zsh" ~/.aliases
ln -sf "$PWD/tmux.conf"   ~/.tmux.conf
ln -sf "$PWD/gitconfig"   ~/.gitconfig
ln -sf "$PWD/.gitignore"  ~/.gitignore
ln -sf "$(brew --prefix)/opt/zplug" ~/.zplug