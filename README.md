# dotfiles

My simple environment configuration files.

Performs the following:
* Conditionally installs [Homebrew](https://brew.sh)
* Conditionally installs [asdf-vm](https://asdf-vm.com)
* Symlinks a [Brewfile](homebrew/Brewfile) to ~/Brewfile
* Installs the Homebrew packages specified in said [Brewfile](homebrew/Brewfile)
* Conditionally symlinks a [.zshrc](zsh/zshrc) file to ~/.zshrc
* Conditionally symlinks a [.vimrc](vim/vimrc) file to ~/.vimrc
* Conditionally symlinks a [Ranger config](ranger/rc.conf) file to ~/.config/ranger/rc.conf
* Conditionally symlinks a [Hammerspoon config](hammerspoon/init.lua) file to ~/.hammerspoon/init.lua

## Installation

On a Unix-based system, run the setup script to set up symbolic links for the included dotfiles:

```bash
$ bash setup.sh
```
