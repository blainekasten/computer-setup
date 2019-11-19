# Path to your oh-my-zsh installation.
export ZSH=/Users/kastens/.oh-my-zsh

# Temp Hack
export NODE_ENV=development
export BABEL_ENV=$NODE_ENV

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
#
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
#
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
#
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
#
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
#
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
#
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
#
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
#
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
#
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
#
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
#
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export ANDROID_HOME=/usr/local/opt/android-sdk

alias zshrc="vim ~/.zshrc"
alias v="nvim ./"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias gb="git for-each-ref --count=7 --sort=-committerdate refs/heads/ --format='%(color:bold magenta)%(refname:short)%(color:reset) %(color:white)%(committerdate:relative)%(color:reset)'"
alias gbd="git branch -d"
alias gs='git status'
alias ga='git add -A & git commit -m '
alias gck='git checkout'
alias grb1='git rebase -i HEAD~2'
alias gp='git push'
alias gpop='git checkout -'
alias grbm='gck master && git pull && gck - && git rebase master -p && git push -f'
unalias grb

alias adio='cd ~/Sites/adio'
alias adioapp='cd ~/Sites/AdioApp2'
alias throwaway='cd ~/throwaway'
alias gtsby='cd ~/Sites/gatsby'

syntax () { highlight -O rtf $1 | pbcopy }

onport () { lsof -i :$1 }

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$HOME/.yarn/bin:$PATH"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$HOME/.cargo/bin:$PATH


eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$NVM_DIR/bash_completion" ]] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
