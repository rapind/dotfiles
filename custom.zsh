# ln -s custom.zsh ~/.oh-my-zsh/custom/custom.zsh

unsetopt correct_all

alias c='clear'
alias be='bundle exec'
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias mm="bundle exec middleman -p 3000"
alias vi="mvim"
alias vim="mvim"
alias bower='noglob bower'

# Base path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"

# Android
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

# Racket
export PATH="$PATH:/Applications/racket/bin"

# SML
export PATH="$PATH:/usr/local/Cellar/smlnj/110.76/bin"

# RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

