export ZSH=/Users/blainekasten/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export ANDROID_HOME=/usr/local/opt/android-sdk

alias zshrc="vim ~/.zshrc"
alias v="nvim ./"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias gs='git status'
alias ga='git add -A & git commit -m '
alias gck='git checkout'
alias grb1='git rebase -i HEAD~2'
alias gp='git push --no-verify'
unalias grb

alias onport='lsof -i :5000'

syntax () { highlight -O rtf $1 | pbcopy }

export PATH="$HOME/.yarn/bin:$PATH"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
