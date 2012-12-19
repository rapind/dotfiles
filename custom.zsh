# ln -s custom.zsh ~/.oh-my-zsh/custom/custom.zsh

unsetopt correct_all

alias tmux="TERM=screen-256color-bce tmux"
alias l='ls -lah' # l for list style, a for all including hidden, h for human readable file sizes
alias c='clear' # shortcut to clear your terminal
alias ..='cd ..' # move up 1 dir
alias er='mate .' # open current dir
alias rake='bundle exec rake'
alias retina='rake simulator retina=true'
alias rails='bundle exec rails'
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias vi="mvim"
alias vim="mvim"
alias mm="bundle exec middleman -p 3000"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"

source $HOME/.rvm/scripts/rvm
