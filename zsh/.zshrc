export ZSH=/Users/henryfirth/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# ==========================================
# ===          PERSONAL ALIASES          ===
# ==========================================

# Amend an old commit using the hash as an argument
gfix() {
  git commit --fixup="$1"
  git rebase --interactive --autosquash "$1"\^
}

# Get installed vscode extensions
alias vscode-extensions="code --list-extensions | xargs -L 1 echo code --install-extension"

# Conditinally set nvim aliases
if command -v nvim > /dev/null 2>&1; then
  # Remap to nvim
  alias vi="nvim"
  alias vim="nvim"

  # Open nvim plugins file
  alias nvim-plugins="vi ~/.config/nvim/plugins.vim"

  # Open nvim config
  alias nvim-settings="vi ~/.config/nvim/init.vim"
else
  echo "Aliases for nvim were not set, as nvim is not installed on this machine. Install nvim, you monster."
fi

# Import system-specific config
source ~/.profile
