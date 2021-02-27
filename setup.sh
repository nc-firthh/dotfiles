#!/bin/zsh

# Install Homebrew
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install asdf-vm
if ! command -v asdf &> /dev/null
then
    echo "Installing asdf-vm..."
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
fi

# Files to symlink
Brewfile=~/Brewfile
zsh=~/.zshrc
vim=~/.vimrc
ranger=~/.config/ranger/rc.conf
hammerspoon=~/.hammerspoon/init.lua

# Homebrew
if [ ! -L $Brewfile ] ; then
    echo "Creating symbolic link for Brewfile..."
    ln -s $PWD/homebrew/Brewfile $Brewfile
fi

echo "Installing Brewfile packages..."
brew bundle --file=$Brewfile

# ZSH
if [ ! -L $zsh ] ; then
    echo "Creating symbolic link for .zshrc..."
    ln -s $PWD/zsh/zshrc $zsh
fi

# Vim
if [ ! -L $vim ] ; then
    echo "Creating symbolic link for .vimrc..."
    ln -s $PWD/vim/vimrc $vim
fi

# Ranger
if [ ! -L $ranger ] ; then
    echo "Creating symbolic link for Ranger config..."
    ln -s $PWD/ranger/rc.conf $ranger
fi

# Hammerspoon
if [ ! -L $hammerspoon ] ; then
    echo "Creating symbolic link for Hammerspoon config..."
    ln -s $PWD/hammerspoon/init.lua $hammerspoon
fi

