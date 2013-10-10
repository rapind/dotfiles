# ln -s custom.zsh ~/.oh-my-zsh/custom/custom.zsh

unsetopt correct_all

alias c='clear'
alias be='bundle exec'
alias rs='rails server'
alias rc='rails console'
alias mm="middleman -p 3000"
alias bower='noglob bower'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/.rvm/bin:/Applications/racket/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

