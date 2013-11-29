# set PATH /usr/local/bin $PATH

function gl
  git pull $argv
end

function gp
  git push $argv
end

function gco
  git checkout $argv
end

function gc
  git commit $argv
end

function ga
  git add $argv
end

function gst
  git status $argv
end

function gd
  git diff $argv
end

function glg
  git log $argv
end

function gb
  git branch $argv
end

function c
  clear
end

function l
  ls -all $argv
end

function be
  bundle exec $argv
end

function mm
  bundle exec middleman -p 3000
end

function rs
  bundle exec rails server
end

function rc
  bundle exec rails console
end

function vi
  mvim $argv
end

function vim
  mvim $argv
end

function bower
  noglob bower $argv
end
