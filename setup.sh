#!/bin/zsh

# Symlink .zshrc
ln -s $PWD/zsh/zshrc ~/.zshrc

if command -v nvim > /dev/null 2>&1; then
  # Symlink nvim configs
  ln -s $PWD/nvim/init.vim ~/.config/nvim/init.vim
  ln -s $PWD/nvim/plugins.vim ~/.config/nvim/plugins.vim
else
  echo "Dotfiles for nvim were not symlinked, as nvim is not installed. Install nvim, you monster."
fi
