set PATH /usr/local/bin $PATH

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

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l arrow "$red➜ "
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info "$blue git:($git_branch$blue)"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $arrow $cwd $git_info $normal ' '
end
