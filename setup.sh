#!/bin/zsh

# Set up symlinks for the included dotfiles

# Alacritty
ln -s $PWD/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# Hammerspoon
ln -s $PWD/hammerspoon/init.lua ~/.hammerspoon/init.lua

# ZSH
ln -s $PWD/zsh/zshrc ~/.zshrc

# Git
ln -s $PWD/git/gitconfig ~/.gitconfig

# Neovim
if command -v nvim > /dev/null 2>&1; then
  ln -s $PWD/nvim/init.vim ~/.config/nvim/init.vim
  ln -s $PWD/nvim/plugins.vim ~/.config/nvim/plugins.vim
else
  echo "Dotfiles for nvim were not symlinked, as nvim is not installed. Install nvim, you monster."
fi
