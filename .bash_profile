# echo is like puts for bash (bash is the program running in your terminal)
echo "Loading ~/.bash_profile a shell script that runs in every new terminal you open"

# $VARIABLE will render before the rest of the command is executed
echo "Logged in as $USER at $(hostname)"

# A more colorful prompt
# \[\e[0m\] resets the color to default color
c_reset='\[\e[0m\]'
#  \e[0;31m\ sets the color to red
c_path='\[\e[0;31m\]'
# \e[0;32m\ sets the color to green
c_git_clean='\[\e[0;34m\]'
# \e[0;31m\ sets the color to yellow
c_git_dirty='\[\e[0;33m\]'

# PS1 is the variable for the prompt you see everytime you hit enter
PROMPT_COMMAND='PS1="${c_path}\W${c_reset}$(git_prompt) \[\e[0;37m\]➜ \[\e[0;32m\] "'

# determines if the git branch you are on is clean or dirty
git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  # Grab working branch name
  git_branch=$(Git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  # Clean or dirty branch
  if git diff --quiet 2>/dev/null >&2; then
    git_color="${c_git_clean}"
  else
    git_color=${c_git_dirty}
  fi
  echo " $git_color[$git_color$git_branch${c_reset}$git_color]"
}

# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex

# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'

# Force grep to always use the color option and show line numbers
export GREP_OPTIONS='--color=always'

# Set sublime as the default editor
which -s subl && export EDITOR="subl --wait"

eval "$(rbenv init -)"

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  
  # Add git completion to aliases
  __git_complete co _git_checkout
  __git_complete gm __git_merge
  __git_complete gp _git_pull
fi

alias co="git checkout"
alias gm="git merge"
alias gp="git pull"

alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias ga='git add'
alias gc='git commit'
alias ba='git branch -a'

alias be='bundle exec'
